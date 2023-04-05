/*
Create an application to take input number from user and print its reverse number
in TextView without button */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ReverseNumber(),
    );
  }
}

class ReverseNumber extends StatefulWidget {
  const ReverseNumber({Key? key}) : super(key: key);

  @override
  State<ReverseNumber> createState() => _ReverseNumberState();
}

class _ReverseNumberState extends State<ReverseNumber> {
  final numberController = TextEditingController();
  String reversedNumber = '';

  void onTextChanged(String text) {
    setState(() {
      reversedNumber = text.split('').reversed.join();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Reveres Number '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: numberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter a number',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: onTextChanged,
                ),
              ),
              Text(
                reversedNumber,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ));
  }
}
