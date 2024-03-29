# screen_switch

The project consists of two main files: `introscreen.dart` and `main.dart`, which together create a basic Flutter application for navigating between two screens.

In `introscreen.dart`, a `StatelessWidget` named `introscreen` is defined. This widget represents the introductory screen of the application. It contains a simple Scaffold with an AppBar and a centered Column. Inside the Column, there is a Text widget displaying the "Welcome" message with specific styling, and below it, there is an ElevatedButton. This button is configured to navigate to the next screen (defined in `main.dart`) when pressed, using the Navigator.push method and MaterialPageRoute.

In `main.dart`, the `MyApp` widget is defined as a `StatelessWidget`, serving as the root of the application. It sets up the MaterialApp with a theme and sets `introscreen` as the home screen of the app. Additionally, there's a StatefulWidget named `MyHomePage` that represents the second screen of the application. It receives a title parameter and displays it in the AppBar. The body of `MyHomePage` is a simple Container with a blueish background color and a Text widget displaying "hello World".

Overall, this code creates a basic Flutter application with two screens: an introductory screen (`introscreen.dart`) and a home screen (`main.dart`). The introductory screen welcomes the user and provides a button to navigate to the home screen, where a simple greeting message is displayed.
