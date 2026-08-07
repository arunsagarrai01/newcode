import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  //final String name = "Arun";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child : Text("Hi guys my name is Arun Sagar Rai,")),

    );
  }
}



// Stateless widget
/*Its static widget - whose state doesnot change*/




// Stateful widget
/*Its dynami widget - whose state can change*/