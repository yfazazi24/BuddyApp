import 'package:flutter/material.dart';
import 'ChatbotPage.dart';
import 'dart:math';
void main() => runApp(const MyApp());

void runMyApp() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buddy Project',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          labelLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/signup': (context) => SignupPage(),
        '/login': (context) => LoginPage(),
        '/forgotpassword': (context) => ForgotPasswordPage(),
        '/menupage': (context) => const MenuPage(),
        '/journalpage': (context)=> const JournalPage(),
      },
    );
  }
}

class SignupPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hello I am Buddy',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Create Account'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Already have an account? Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
//Login Page class
class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenuPage()
                    ), //Leads to the menu page after login
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordPage(),
                    ),
                  );
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPage(),
                    ), //creating an account in the signup page
                  );
                },
                child: Text(
                  'Don\'t have an account? Sign up',
                  style: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[900],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                child: const Text(
                  'Create account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text(
                  'Already have an account? Log in',
                  style: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[900],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog( //DialogBox that would confirm the reset password
                      title: const Text('Password reset email sent'),
                      content: Text(
                          'A password reset email has been sent to ${_emailController.text}'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back to Log In',
                  style: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MenuPage extends StatefulWidget {
  const MenuPage({super.key});
  @override
  myMenuPageState createState() => myMenuPageState();
}

class myMenuPageState extends State<MenuPage> {
  //initialization of variables
  String affirmation = '';
  String quote = '';
  String advice = '';
  String joke = '';
  String word = '';
  String funFact = '';
  bool _smiledAtStranger = false;
  bool _complimentedFriend = false;
  bool _sentKindText = false;

  List<String> affirmationList = [
    'I am capable of achieving my dreams',
    'I am worthy of love and respect',
    'I choose happiness and joy in my life',
    'I trust in myself and my abilities',
  ];

  List<String> quoteList = [
    'The way to get started is to quit talking and begin doing. -Walt Disney',
    'Your time is limited, don’t waste it living someone else’s life. -Steve Jobs',
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Believe you can and you're halfway there. - Theodore Roosevelt",
    "Everything you've ever wanted is on the other side of fear. - George Addair",
    "Don't watch the clock; do what it does. Keep going. - Sam Levenson",
    "The best way to predict the future is to invent it. - Alan Kay",
  ];


  List<String> adviceList = [
    'Take things one step at a time',
    'Practice self-care regularly',
    'Don\'t compare yourself to others',
    'Take breaks when you need to',
    "Drink more water and stay hydrated",
    "Take deep breaths when you feel anxious",
    "Take a break and go for a walk outside",
    "Set small, achievable goals for yourself",
    "Practice self-care regularly",
    "Learn to say 'no' when you need to",
    "Take time to reflect on your day",
    "Spend time with people who uplift and support you",
    "Prioritize sleep and aim for 7-8 hours per night"
  ];

  List<String> jokeList = [
    'Why did the tomato turn red? Because it saw the salad dressing!',
    'Why did the chicken cross the playground? To get to the other slide!',
    'What do you call fake spaghetti? An impasta.',
  ];

  List<String> wordList = [
    'Serendipity',
    'Ephemeral',
    'Quintessential',
    'Luminous',
  ];

  List<String> funFactList = [
    'Penguins can jump up to 6 feet in the air!',
    'A group of flamingos is called a flamboyance',
    'A strawberry is not actually a berry, but a banana is!',
    'Kangaroos can\'t walk backwards.',
  ];

  List<String> toDoList = [
    'Smile at a stranger',
    'Compliment a friend',
    'Send a kind message to someone meaningful to you',
    'Take a 10 minute walk outside',
    'Write down 3 things you are grateful for',
  ];

  List<String> selectedTasks = [];

  //Function randomizing the generation of tasks
  void generateTasks() {
    selectedTasks = [];
    final random = Random();
    for (int i = 0; i < 3; i++) {
      int index = random.nextInt(toDoList.length);
      selectedTasks.add(toDoList[index]);
    }
  }
  //Function randomizing the generation of affirmations
  void generateAffirmation() {
    final random = Random();
    int index = random.nextInt(affirmationList.length);
    setState(() {
      affirmation = affirmationList[index];
    });
  }

//Function randomizing the generation of quotes
  void generateQuote() {
    final random = Random();
    int index = random.nextInt(quoteList.length);
    setState(() {
      quote = quoteList[index];
    });
  }

//Function randomizing the generation of advice
  void generateAdvice() {
    final random = Random();
    int index = random.nextInt(adviceList.length);
    setState(() {
      advice = adviceList[index];
    });
  }

//Function randomizing the generation of jokes
  void generateJoke() {
    final random = Random();
    int index = random.nextInt(jokeList.length);
    setState(() {
      joke = jokeList[index];
    });
  }

  // Home page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text('Welcome Back!'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "To-Do",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: _smiledAtStranger,
                  onChanged: (bool? value) {
                    setState(() {
                      _smiledAtStranger = value ?? true;
                    });
                  },
                  activeColor: Colors.teal[900],
                ),
                SizedBox(width: 8),
                Text(
                  'Smile at a stranger',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: _complimentedFriend,
                  onChanged: (bool? value) {
                    setState(() {
                      _complimentedFriend = value ?? true;
                    });
                  },
                  activeColor: Colors.teal[900],
                ),
                SizedBox(width: 8),
                Text(
                  'Compliment a friend',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: _sentKindText,
                  onChanged: (bool? value) {
                    setState(() {
                      _sentKindText = value ?? true;
                    });
                  },
                  activeColor: Colors.teal[900],
                ),
                SizedBox(width: 8),
                Text(
                  'Call a family member',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.teal[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            Text(
              'Daily care',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  _buildDropDown('Affirmation', affirmationList),
                  _buildDropDown('Quote', quoteList),
                  _buildDropDown('Advice', adviceList),
                  _buildDropDown('Joke', jokeList),
                  _buildDropDown('Word', wordList),
                  _buildDropDown('Fun Fact', funFactList),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // This centers the buttons horizontally
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/journalpage');
                  },
                  child: Text('My Journal'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatbotPage()),
                    );
                  },
                  child: Text('Chat with Sofia'),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }

  //Widget responsible of building the drop down menu
  Widget _buildDropDown(String title, List<String> items) {
    final _random = new Random();
    String selectedItem = items[_random.nextInt(items.length)];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 8.0),
          DropdownButton<String>(
            isExpanded: true,
            value: selectedItem,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style:  TextStyle(color: Colors.teal[900],
              fontWeight: FontWeight.bold,
              fontSize: 16,),
            onChanged: (String? newValue) {
              if (newValue != null) {
                selectedItem = newValue;
              }
            },
            items: items.map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Flexible(
                    child: Text(
                      value,
                      overflow: TextOverflow.ellipsis, // Add ellipsis to avoid text overflow
                    ),
                  ),
                )
            ).toList(),
          ),
        ],
      ),
    );

  }
}

//journaling page
class JournalPage extends StatefulWidget {
  const JournalPage({Key? key}) : super(key: key);

  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  final _formKey = GlobalKey<FormState>();
  final _gratefulController = TextEditingController();
  final _letGoController = TextEditingController();
  List<Map<String, String>> _journalEntries = [];

  @override
  void dispose() {
    _gratefulController.dispose();
    _letGoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          title: const Text('Journal'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              const Text(
                'What are you grateful for today?', //prompt#1
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              TextFormField(
                controller: _gratefulController,
                maxLines: 5,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter something'; //prompt#2
                  }
                return null;
                },
              ),
              const SizedBox(height: 16.0),
              const Text(
                'What do you need to let go of today?',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                ),
              ),
            TextFormField(
              controller: _letGoController,
              maxLines: 5,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter something';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final grateful = _gratefulController.text;
                    final letGo = _letGoController.text;
                    final entry = <String, String>{
                      'grateful': grateful,
                      'letGo': letGo,
                      'date': DateTime.now().toString()
                      };
              setState(() {
                _journalEntries.add(entry);
                _gratefulController.clear();
                _letGoController.clear();
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Entry saved')),
              );
                  }
                },
              child: const Text('Save'),
            ),
          ),
    const SizedBox(height: 16.0),
      const Text(
        'Entries',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    const Divider(),
    Expanded(
      child: ListView.builder( //stores a list of entries by date of entry
        itemCount: _journalEntries.length,
        itemBuilder: (context, index) {
          final entry = _journalEntries[index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date: ${entry['date']}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(height: 8.0),
                      Text(
                      'Grateful for: ${entry['grateful']}',
                      ),
                  const SizedBox(height: 8.0),
                      Text(
                      'Letting go of: ${entry['letGo']}',
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      ),
    ),
  );

  }
}

