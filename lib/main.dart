import 'package:flutter/widgets.dart';

main() => runApp(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: Center(child: Counter()),
      ),
    );

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(child: GestureDetector(onTap: () {
      setState(() {
        // Using setState() is required to trigger lifecycle hooks
        // so the widget will know that it should be updated
        ++counter;
      });
    },
    child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF17A2B8),
          ),
          width: 80.0,
          child: Center(
            child: Text( // here we print the value of the [counter]
              '$counter', // to see how it changes
              style: const TextStyle(fontSize: 30.0),
            ),
          ),
    )));
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        // just a normal widget
        onTap: () {
          // one of the [GestureDetector] properties
          // This function will be called when child widget is pressed
          print('You pressed me');
        },
        child: Container(
          // the [Container] will represent our button
          decoration: const BoxDecoration(
            // this is how you style the [Container]
            shape: BoxShape
                .circle, // change its shape from rectangular to circular
            color: Color(0xFF17A2B8), // and paint it in blue
          ),
          width: 80.0,
          height: 80.0,
        ),
      ),
    );
  }
}
