import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  // final String name = "Arun";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "My First Application",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w500,
            height: 1,
            letterSpacing: 2,
            wordSpacing: 12,
            shadows: [Shadow(color: Colors.black,
            blurRadius: 10, offset: Offset(-30, -30),),],
            /*decoration: TextDecoration.combine([
              TextDecoration.underline,
              //TextDecoration.overline,
              //TextDecoration.lineThrough
            ]),
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.dashed,*/
          ),
        ),
      ),
    );
  }
}

// Stateless widget
/* Its static widget - whose state does not change */

// Stateful widget
/* Its dynamic widget - whose state can change */