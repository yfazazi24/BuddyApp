import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatbotPage extends StatefulWidget {
  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final TextEditingController _controller = TextEditingController();
  List<String> _messages = [];

  Future<void> sendMessage(String message) async {
    String apiKey = "Your_google_api_key";
    final String baseUrl = 'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent';
    // Prepend the user message with your specific prompt

    String inputText = "You are a chatbot named Sofia, specialized in offering support for mental health issues. Based on a supportive and friendly conversational approach, provide a sentence empathizing with the user's situation, followed by a piece of short emotional support along with 1-2 pieces of practical advice. The total response should not exceed 100 words and you should never prescribe medication or diagnose and state that if the user asks you to. The user has just shared: $message";
    var url = Uri.parse('$baseUrl?key=$apiKey');
    var headers = {'Content-Type': 'application/json'};
    var body = json.encode({
      "contents": [
        {"role": "user", "parts": [{"text": inputText}]}
      ]
    });

    var response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data['candidates'] != null && data['candidates'].isNotEmpty) {
        var content = data['candidates'][0]['content'];
        if (content != null && content['parts'] != null &&
            content['parts'].isNotEmpty) {
          setState(() {
            _messages.add("You: $message");
            _messages.add("Sofia: ${content['parts'][0]['text']}");
          });
          _controller.clear();
        }
      }
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text('Chat with Sofia'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                bool isUserMessage = _messages[index].startsWith("You:");
                // Align messages to the right for the user and left for Sofia
                Alignment alignment = isUserMessage
                    ? Alignment.centerRight
                    : Alignment.centerLeft;
                Color bubbleColor = isUserMessage ? (Colors.teal[800] ?? Colors.teal) : (Colors.teal[50] ?? Colors.teal.shade50); // Corrected line with default values

                Color textColor = isUserMessage ? Colors.white : Colors.black;
                EdgeInsets messagePadding = isUserMessage ? EdgeInsets.only(
                    left: 40) : EdgeInsets.only(right: 40);

                return Align(
                  alignment: alignment,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: bubbleColor,
                      borderRadius: isUserMessage ? BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ) : BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Text(
                      _messages[index].substring(isUserMessage ? 4 : 7),
                      // Remove "You: " or "Sofia: "
                      style: TextStyle(color: textColor),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Send a message',
                      border: OutlineInputBorder(),
                      filled: true, // This must be set to true to enable the fillColor property
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => sendMessage(_controller.text),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
