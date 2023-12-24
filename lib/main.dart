import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginExample());
  }
}

class LoginExample extends StatefulWidget {
  const LoginExample({super.key});

  @override
  State<LoginExample> createState() => _LoginExampleState();
}

class _LoginExampleState extends State<LoginExample> {
  String username = "";
  String password = "";

  late TextEditingController _controller;
  //This controller is used to interact with the text input

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }
  //This method initializes the controller with init state when added to widget tree

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  //Called when widget removed from the widget tree

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.account_box),
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            controller: _controller,
            onSubmitted: (String value) {
              setState(() {
                if (value == "Mellob1989@")
                  print("correct");
                else
                  print("Wrong");
              });
            }),
      ),
    );
  }
}
