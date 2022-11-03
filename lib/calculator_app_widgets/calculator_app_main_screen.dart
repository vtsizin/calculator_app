import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calculator_app_converter_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State <MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calculator")),
        body: Padding(
        padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0.0),
                color: Colors.white,
                width: 500.0,
                height: 350.0,
              ),
              Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                  OutlinedButton(onPressed: null, child: Text("+")),
                  OutlinedButton(onPressed: null, child: Text("-")),
                  OutlinedButton(onPressed: null, child: Text("*")),
                  OutlinedButton(onPressed: null, child: Text("/")),
                  OutlinedButton(onPressed: null, child: Text("AC")),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                OutlinedButton(onPressed: null, child: Text("9")),
                OutlinedButton(onPressed: null, child: Text("8")),
                OutlinedButton(onPressed: null, child: Text("7")),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  OutlinedButton(onPressed: null, child: Text("6")),
                  OutlinedButton(onPressed: null, child: Text("5")),
                  OutlinedButton(onPressed: null, child: Text("4")),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  OutlinedButton(onPressed: null, child: Text("3")),
                  OutlinedButton(onPressed: null, child: Text("2")),
                  OutlinedButton(onPressed: null, child: Text("1")),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  OutlinedButton(onPressed: null, child: Text("0")),
                  OutlinedButton(onPressed: null, child: Text(",")),
                  OutlinedButton(onPressed: null, child: Text("="))
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OutlinedButton(onPressed: () {
                    Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => MileConverter()),
                    );
                  }
                      , child: Text("Open Mile Converter")),
                ],
              )
            ],
          ),
        ),
    );
  }
}

