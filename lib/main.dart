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
          textScaler: TextScaler.linear(1),
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




/*
* Flutter has hundreds of widgets, but you only need to learn the most important ones first. Here's a roadmap from beginner to advanced.

What is a Widget?

A widget is the basic building block of a Flutter app. Everything you see on the screen is a widget.

Examples:

Text
Button
Image
Icon
Row
Column
Scaffold
1. Root Widgets

These are the first widgets used in almost every Flutter app.

MaterialApp()
CupertinoApp()
WidgetsApp()

Example:

MaterialApp(
  home: HomeScreen(),
)
2. Layout Widgets

Used to arrange widgets on the screen.

Scaffold

Provides the app structure.

Scaffold(
  appBar: AppBar(),
  body: Center(),
  floatingActionButton: FloatingActionButton(),
)
Center

Centers a widget.

Center(
  child: Text("Hello"),
)
Container

Most commonly used widget.

Properties

width
height
color
margin
padding
alignment
decoration

Example

Container(
  width: 200,
  height: 100,
  color: Colors.blue,
)
SizedBox

Creates empty space.

SizedBox(
  width: 20,
  height: 20,
)
Padding

Adds padding around a widget.

Padding(
  padding: EdgeInsets.all(20),
  child: Text("Hello"),
)
Align

Aligns widgets.

Align(
  alignment: Alignment.topRight,
  child: Icon(Icons.star),
)
Expanded

Takes remaining space.

Row(
  children: [
    Expanded(
      child: Container(color: Colors.red),
    ),
  ],
)
Spacer

Creates flexible space.

Spacer()
3. Row & Column
Row

Horizontal layout.

Row(
  children: [
    Icon(Icons.home),
    Text("Home"),
  ],
)
Column

Vertical layout.

Column(
  children: [
    Text("Name"),
    Text("Age"),
  ],
)
Wrap

Automatically wraps widgets.

Wrap(
  children: [
    Chip(label: Text("Flutter")),
    Chip(label: Text("Dart")),
  ],
)
Stack

Places widgets on top of each other.

Stack(
  children: [
    Container(color: Colors.red),
    Text("Hello"),
  ],
)
Positioned

Used inside Stack.

Positioned(
  top: 20,
  left: 10,
  child: Icon(Icons.star),
)
4. Display Widgets
Text
Text("Hello Flutter")
RichText

Multiple text styles.

RichText(
  text: TextSpan(
    children: [
      TextSpan(text: "Hello "),
      TextSpan(text: "Flutter"),
    ],
  ),
)
Image
Image.asset("assets/logo.png")
Image.network("https://...")
Icon
Icon(Icons.home)
CircleAvatar
CircleAvatar(
  radius: 40,
)
5. Input Widgets
TextField
TextField()
TextFormField
TextFormField()
Checkbox
Checkbox(
  value: true,
  onChanged: (value) {},
)
Switch
Switch(
  value: true,
  onChanged: (value) {},
)
Radio
Radio(
  value: 1,
  groupValue: selected,
  onChanged: (value) {},
)
Slider
Slider(
  value: 20,
  onChanged: (value) {},
)
DropdownButton
DropdownButton(
  items: [],
  onChanged: (value) {},
)
6. Button Widgets
ElevatedButton
ElevatedButton(
  onPressed: () {},
  child: Text("Click"),
)
TextButton
TextButton(
  onPressed: () {},
  child: Text("Save"),
)
OutlinedButton
OutlinedButton(
  onPressed: () {},
  child: Text("Cancel"),
)
IconButton
IconButton(
  onPressed: () {},
  icon: Icon(Icons.favorite),
)
FloatingActionButton
FloatingActionButton(
  onPressed: () {},
)
7. List Widgets
ListView
ListView(
  children: [],
)
ListTile
ListTile(
  leading: Icon(Icons.person),
  title: Text("Arun"),
)
GridView
GridView.count(
  crossAxisCount: 2,
)
8. Card Widgets
Card
Card(
  child: Text("Flutter"),
)
Divider
Divider()
Chip
Chip(
  label: Text("Flutter"),
)
9. Navigation Widgets
AppBar
AppBar(
  title: Text("Home"),
)
Drawer
Drawer()
BottomNavigationBar
BottomNavigationBar(
  items: [],
)
TabBar
TabBar(
  tabs: [],
)
10. Scroll Widgets
SingleChildScrollView
SingleChildScrollView(
  child: Column(),
)
PageView
PageView()
11. Async Widgets
FutureBuilder
FutureBuilder(
  future: fetchData(),
  builder: (context, snapshot) {},
)
StreamBuilder
StreamBuilder(
  stream: stream,
  builder: (context, snapshot) {},
)
12. Stateful Widgets
StatefulWidget

Used when the UI changes.

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
StatelessWidget

Used when the UI never changes.

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello");
  }
}
13. Dialog Widgets
AlertDialog
SimpleDialog
SnackBar
BottomSheet

Example:

showDialog(
  context: context,
  builder: (_) => AlertDialog(
    title: Text("Hello"),
  ),
);
14. Commonly Used Widgets
SafeArea
Expanded
Flexible
Hero
GestureDetector
InkWell
Opacity
Visibility
ClipRRect
AspectRatio
FittedBox
Placeholder
RepaintBoundary
Learning Order (Recommended)
MaterialApp
Scaffold
Container
Center
Text
Icon
Image
Row
Column
Padding
SizedBox
Expanded
Stack
ListView
GridView
Card
TextField
ElevatedButton
Navigator
StatefulWidget
FutureBuilder
StreamBuilder
Animations
*
* */