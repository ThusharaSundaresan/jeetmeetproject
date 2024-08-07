import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_jee/Loginpage.dart';

void main(List<String> args) {
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomeScreen(),
    );
  }
}
class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
       MaterialPageRoute(builder: (context) => LoginPage()),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color.fromARGB(255, 186, 25, 14),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  height: 500,
                  width: 500,
                  
                  color: Color.fromARGB(255, 186, 25, 14),
                  child: Center(child: Text('JEETMEET',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 70.0),)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}