import 'package:flutter/material.dart';

class CreateTestCaseScreen extends StatefulWidget {
  const CreateTestCaseScreen({super.key});

  @override
  State<CreateTestCaseScreen> createState() => _CreateTestCaseScreenState();
}

class _CreateTestCaseScreenState extends State<CreateTestCaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text('This is the second screen!'),
      ),
    );
  }
}
