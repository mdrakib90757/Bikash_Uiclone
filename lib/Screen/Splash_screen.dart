

import 'dart:async';



import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';



import '../Utils/color.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int courrentIndex=0;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 3),
    () {
      Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginScreen(),));
    },
    );

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor().primaryColor,
      
      body: Center(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 280),
              child: Center(
                child:Image.asset("assets/img/loading.gif",
                  height: 180,
                  width: 180,
                  color: Colors.white,
                )
              )
            ),
            SizedBox(height: 120,),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: LoadingAnimationWidget.
                  horizontalRotatingDots(
                    size: 100, color: Colors.white,
                  ),
                ),
              ],
            )

          ],
        ),
      )
      
    );
  }
}
