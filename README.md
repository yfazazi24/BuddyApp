

# Buddy: A Mental Health Companion App

Buddy is a mental health companion app designed to promote positivity, self-care, and personal growth. Built with Dart and the Flutter framework, Buddy provides a unique and engaging user experience that encourages users to incorporate acts of kindness, self-care practices, and journaling into their daily lives.

## Getting Started

To run the Buddy app, you need to have Flutter installed on your machine. Follow the installation guide on the [Flutter website](https://flutter.dev/docs/get-started/install) to set up your development environment.

After cloning the project from the GitHub repository, open the project directory in your preferred code editor. Then, open the `main.dart` file located in the `lib` folder. This file contains the main method of the app, which defines the routes for the app and starts the app.


## Table of Contents
1. [Purpose of the App](#purpose-of-the-app)
2. [Features](#features)
   - [Chat with Sofia](#Sofia Chatbot)
   -  [To-Do List](#to-do-list)
   - [Daily Care](#daily-care)
   - [Journaling](#journaling)
4. [How to Use](#how-to-use)
   - [Navigating the App](#navigating-the-app)
   - [Routes](#routes)
   - [Components](#components)
   - [Using the Features Effectively](#using-the-features-effectively)

## Purpose of the App

Buddy aims to provide a one-stop solution for users to improve their mental well-being by integrating self-care practices, acts of kindness, journaling, and interactive AI-chatbot into their daily lives.

## Features
### Chat with Sofia
Buddy introduces Sofia, a supportive chatbot powered by the GEMINI Rest API. Users can share their thoughts and receive empathetic responses and practical advice. Sofia ensures safe interactions by avoiding prescriptions or diagnoses.

### To-Do List
The To-Do List feature encourages users to perform small acts of kindness throughout the day. Buddy generates a list of three random tasks for users to complete, such as smiling at a stranger or complimenting a friend. Users can mark off tasks as they complete them, promoting a sense of accomplishment and positive reinforcement.

### Daily Care
The Daily Care section is a compilation of randomly generated affirmations, quotes, jokes, advice, and fun facts designed to uplift and inspire users. By providing a variety of content, Buddy ensures that users have access to a diverse range of positive messages and helpful tips that can be applied to their daily lives.

### Journaling
The Journaling feature enables users to express their thoughts and emotions through daily entries. By clicking on the journal button in the home page, users can access a separate page where they can create and save daily entries that asks what they are grateful for and what they need to let go of. This promotes self-reflection and emotional awareness, ultimately fostering personal growth.

## How to Use

### Navigating the App
Buddy's user interface is designed to be intuitive and easy to navigate. Upon launching the app, users will see login page where they can enter their credentials or create a new account. Once logged in, users will have access to the main menu, where they can explore the To-Do List, Daily Care, and Journaling features.

### Routes

The Buddy app has the following routes:

- `/signup`: This route leads to the `SignupPage`, where users can create a new account by providing their name, email, and password.
- `/login`: This route leads to the `LoginPage`, where users can log in to their account using their email and password.
- `/forgotpassword`: This route leads to the `ForgotPasswordPage`, where users can reset their password if they forget it.
- `/menupage`: This route leads to the `MenuPage`, which serves as the home screen of the app. Here, users can access the daily care routine, to-do list, and journal.
- `/journalpage`: This route leads to the `JournalPage`, where users can view their journal entries and add new ones.'

It also has its own Chatbot route, which can be found on ChatbotPage.dart

## Chat with Sofia - Chatbot Feature

Buddy includes a chatbot feature named "Sofia," designed to provide mental health support. This feature utilizes the GEMINI Rest API to handle dynamic, context-aware conversations.

### Technical Integration with GEMINI API

- **HTTP Client (`http` package)**: Manages HTTP requests, sending user messages formatted as JSON to the API and fetching responses.

- **JSON Encoding (`dart:convert`)**: Handles encoding and decoding of JSON data for communications between the app and the API.

- **State Management (`setState`)**: Updates the app's UI to display new messages once Sofia's responses are received, ensuring real-time interaction.

- **UI Components**: Employs Flutter's material components like `TextFields` for user inputs and `ListView.builder` for displaying messages, enhancing user experience by making chats intuitive and visually distinct between the user and Sofia.

This setup ensures efficient data handling and UI responsiveness, making the chat feature a robust part of the Buddy mental health companion app.


### Components

The Buddy app utilizes various UI components to provide a user-friendly experience. These components include:

- Text fields: Used in the SignupPage and LoginPage to allow users to input their information.
- Buttons: Used to submit forms or navigate to different screens.
- Dialog boxes: Used in the ForgotPasswordPage to confirm the user's email address before sending a password reset link.
- Dropdown menus: Used in the daily care routine to select the care item the user wants to complete.
- Checkboxes: Used in the to-do list to mark completed tasks and increase user engagement.
- Snackbar: Used in the JournalPage to display a message confirming that a journal entry has been saved.

## Conclusion

The Buddy app provides users with a comprehensive platform to track their mental health and self-care progress. With its simple UI design and intuitive navigation, users can easily engage with the app and manage their daily routine.


### Using the Features Effectively
To make the most of Buddy, users should:
- Engage with the To-Do List daily and strive to complete the tasks
- Read and reflect on the content provided in the Daily Care section
- Use the Journaling feature to practice daily self-reflection and emotional awareness

By incorporating Buddy's features into their daily routine, users can foster a positive mindset, practice acts of kindness, and develop greater emotional intelligence.
