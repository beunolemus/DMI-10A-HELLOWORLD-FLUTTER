import 'package:flutter/material.dart';
import 'package:helloworld_app_210652/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
const MyApp({super.key});

@override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.yellow
        ),
      home:const CounterScreen()
    );
  }

}
