import 'package:bikashapp_uiclone/Custom_Widgets/custom_navigationbar.dart';
import 'package:bikashapp_uiclone/Screen/Splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: SplashScreen()
    );
  }
}


