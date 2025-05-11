import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Login screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that username and password fields are present.
    expect(find.byType(TextField), findsNWidgets(2)); // Check for two text fields
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    // Enter a username and password.
    await tester.enterText(find.byKey(Key('usernameField')), 'testuser');
    await tester.enterText(find.byKey(Key('passwordField')), 'testpassword');
    
    // Verify that the text fields show the entered values.
    expect(find.text('testuser'), findsOneWidget);
    expect(find.text('testpassword'), findsOneWidget);

    // Tap the login button and trigger a frame.
    await tester.tap(find.byKey(Key('loginButton')));
    await tester.pump();

    // Verify the resultant state after tapping login
    // (replace this with the expected state, e.g. a welcome message).
    expect(find.text('Welcome'), findsOneWidget); // Example check after login.
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Test',
      home: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Column(
          children: [
            TextField(key: Key('usernameField'), decoration: InputDecoration(labelText: 'Username')),
            TextField(key: Key('passwordField'), decoration: InputDecoration(labelText: 'Password')),
            ElevatedButton(
              key: Key('loginButton'),
              onPressed: () {
                // Implement login logic here
                // You can set a state that leads to a new screen or show a message.
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}