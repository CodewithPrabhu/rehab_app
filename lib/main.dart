import 'package:flutter/material.dart';
import 'package:rehab_app/screens/HomePage.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rehab Application',
      home: Scaffold(
        body: HomePage(),
      ),

    );
  }
}
