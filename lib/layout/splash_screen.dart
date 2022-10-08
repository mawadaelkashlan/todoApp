import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_app/layout/home_layout.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), ()  {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeLayout()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.edit_note, size: 80,color: Colors.white,),
            SizedBox(height: 10,),
            Text("To Do ",style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w500
            ),)
          ],
        ),
      ),
    );
  }
}
