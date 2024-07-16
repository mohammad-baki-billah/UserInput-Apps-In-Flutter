// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // Text editing contoller to get access to the user typed text
  TextEditingController myContoller = TextEditingController();

  //greeting message
  String greetingMessage = '';

  //greet User method
  void greetUser() {
    setState(() {
      greetingMessage = 'Hello, ' + myContoller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Todo App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greeting message
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  greetingMessage,
                  style: TextStyle(color: Colors.deepOrange, fontSize: 20),
                ),
              ),

              //text field
              TextField(
                controller: myContoller,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.deepOrange),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  //Hint Text
                  hintText: 'Type your name',
                  hintStyle: TextStyle(color: Colors.deepOrange),
                ),
                //field text color
                style: TextStyle(color: Colors.deepOrange),
              ),

              //button
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: greetUser,
                  child: Text(
                    'Tab',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
