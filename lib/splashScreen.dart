import 'dart:async';
import 'dart:ffi';
import 'dart:ui';
import 'package:fyp/signin.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp/main.dart';


class splashScreen extends StatefulWidget {
  const splashScreen({super.key});
  

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this);
    Timer(Duration(seconds: 6),(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyLogin(),),);

    });
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Lottie.network('https://assets8.lottiefiles.com/packages/lf20_crm8yD1ULE.json',
             controller:_controller, 
             onLoaded: (Compos) {
              _controller
              ..duration = Compos.duration 
              ..forward();
             }),
             Center(
              child: Text("JobSee" ),
              
              
             ),
            //Image.asset("assets/images/csmdxpxl.png")
            ],
        ),

      ),
    );

  }
}