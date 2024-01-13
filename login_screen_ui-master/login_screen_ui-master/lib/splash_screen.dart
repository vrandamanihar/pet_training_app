import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';


import 'package:training_paws/welcome.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State <SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState(){
    super.initState();

    Timer(const Duration(seconds:4),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
            builder:(context) => const MyHomePage(title: 'hello',),

          ));
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height:double.infinity,
        width:double.infinity,
        decoration:const BoxDecoration(
          gradient:RadialGradient(
            radius: 0.8,
            colors:[
              Color(0xffffecd2),
              Color(0xFFfcb69f),
            ],
          ),
        ),
        child:Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor:Color(0x00ffecd2),
                backgroundImage:AssetImage('assets/images/splash.gif'),
                radius:50,
              ),
              const SizedBox(height:50),
              Center(
                child: Text(
                  'TRAINING \n PAWS',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.arvo(
                    textStyle: const TextStyle(
                      fontSize: 38.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }}
