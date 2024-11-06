

# Social Media Connector App

This Flutter app connects users across multiple social media platforms via URLs, allowing them to send messages via email and phone numbers, and make calls directly from the app. It leverages Flutter's URL package for seamless integration with social media, email, and phone functionalities. This app is designed to simplify user interactions, providing a centralized hub for communication.

## Features
- **Social Media Links**: Connect with users on multiple social media platforms with a single tap.
- **Email Communication**: Quickly send emails using the user's default email app.
- **Phone Number Messaging**: Send SMS messages directly from the app using the user's messaging service.
- **Direct Calling**: Make calls to the specified numbers directly from the app.

## Implementation Details

### Packages Used
- **url_launcher**: To open URLs for social media, email, and phone functionalities within the app.

### Code Overview
The code follows a modular approach for handling different actions (e.g., open social media, send email, message phone, make call). Below are the core functions that handle these actions:

#### 1. Opening Social Media Links
```dart
Future<void> openSocialMedia(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
```
This function verifies the URL before attempting to open it, providing error handling in case of issues.

#### 2. Sending an Email
```dart
Future<void> sendEmail(String email) async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  if (await canLaunch(emailUri.toString())) {
    await launch(emailUri.toString());
  } else {
    throw 'Could not launch $emailUri';
  }
}
```
Using the `mailto` scheme, this function opens the email app with the provided email address pre-filled.

#### 3. Sending a Message
```dart
Future<void> sendMessage(String phoneNumber) async {
  final Uri smsUri = Uri(
    scheme: 'sms',
    path: phoneNumber,
  );
  if (await canLaunch(smsUri.toString())) {
    await launch(smsUri.toString());
  } else {
    throw 'Could not launch $smsUri';
  }
}
```
This function uses the `sms` scheme, making it easy to send text messages directly from the app.

#### 4. Making a Phone Call
```dart
Future<void> makeCall(String phoneNumber) async {
  final Uri telUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  if (await canLaunch(telUri.toString())) {
    await launch(telUri.toString());
  } else {
    throw 'Could not launch $telUri';
  }
}
```
Using the `tel` scheme, this function allows users to initiate phone calls by simply tapping the number in the app.
  

  <img src="https://github.com/user-attachments/assets/6b128bb4-b5cc-4907-af3c-0b35e1047eba" width="22%" Height="35%">
