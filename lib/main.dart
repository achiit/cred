import 'package:cred_assignment/expandablestack.dart';
import 'package:cred_assignment/expandablestackview.dart';
import 'package:cred_assignment/screens/firstscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}

class Stack extends StatelessWidget {
  const Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expandable Stack Sample')),
      body: ExpandableStackView(
        stack: ExpandableStack(
          items: [
            ExpandableItem(
              child: Container(
                color: Colors.blue,
                height: 100,
              ),
            ),
            ExpandableItem(
              child: Container(
                color: Colors.green,
                height: 150,
              ),
            ),
            // Add more items as needed
          ],
        ),
      ),
    );
  }
}
