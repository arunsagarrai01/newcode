/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  // final String name = "Arun";
  // text wedgit

  

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

*/


import 'package:flutter/material.dart';

void main() {
runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
const MyApplication({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: const SettingsPage(),
);
}
}

class SettingsPage extends StatefulWidget {
const SettingsPage({super.key});

@override
State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

bool notifications = true;
bool darkMode = false;

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Settings"),
centerTitle: true,
),

body: ListView(
children: [

const Padding(
padding: EdgeInsets.all(20),
child: Text(
"Account",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
),

ListTile(
leading: const Icon(Icons.person),
title: const Text("Edit Profile"),
subtitle: const Text("Change your profile information"),
trailing: const Icon(Icons.arrow_forward_ios),
onTap: () {
print("Edit Profile clicked");
},
),

ListTile(
leading: const Icon(Icons.lock),
title: const Text("Change Password"),
subtitle: const Text("Update your password"),
trailing: const Icon(Icons.arrow_forward_ios),
onTap: () {
print("Change Password clicked");
},
),

const Divider(),

const Padding(
padding: EdgeInsets.all(20),
child: Text(
"Preferences",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
),

// Notification Switch
SwitchListTile(
secondary: const Icon(Icons.notifications),
title: const Text("Notifications"),
subtitle: const Text("Receive notifications"),
value: notifications,
onChanged: (value) {
setState(() {
notifications = value;
});
},
),

// Dark Mode Switch
SwitchListTile(
secondary: const Icon(Icons.dark_mode),
title: const Text("Dark Mode"),
subtitle: const Text("Enable dark mode"),
value: darkMode,
onChanged: (value) {
setState(() {
darkMode = value;
});
},
),

const Divider(),

const Padding(
padding: EdgeInsets.all(20),
child: Text(
"Other",
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
),

ListTile(
leading: const Icon(Icons.info),
title: const Text("About"),
trailing: const Icon(Icons.arrow_forward_ios),
onTap: () {
showDialog(
context: context,
builder: (context) {
return AlertDialog(
title: const Text("About App"),
content: const Text(
"This is a Flutter practice application.",
),
actions: [
TextButton(
onPressed: () {
Navigator.pop(context);
},
child: const Text("OK"),
),
],
);
},
);
},
),

ListTile(
leading: const Icon(
Icons.logout,
color: Colors.red,
),
title: const Text(
"Logout",
style: TextStyle(
color: Colors.red,
),
),
onTap: () {
showDialog(
context: context,
builder: (context) {
return AlertDialog(
title: const Text("Logout"),
content: const Text(
"Are you sure you want to logout?",
),
actions: [

TextButton(
onPressed: () {
Navigator.pop(context);
},
child: const Text("Cancel"),
),

ElevatedButton(
onPressed: () {
Navigator.pop(context);

ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(
content: Text("Logged out successfully"),
),
);
},
child: const Text("Logout"),
),
],
);
},
);
},
),
],
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

/*
* Since you're learning Flutter from the basics, here's a structured set of practice questions. Try to solve them without looking at the answers. They progress from easy to more challenging.

🟢 Level 1: Basic Widgets
1. Hello World

Create a Flutter app that displays:

Hello Flutter

in the center of the screen.

2. Change Text Style

Display the text:

Welcome Arun

with:

Font size: 30
Bold
Blue color
Letter spacing: 3
3. Container Practice

Create a container with:

Width: 200
Height: 150
Red background
Rounded corners (20)
Centered text: "Flutter"
4. SizedBox

Create two buttons with 30 pixels of space between them.

5. Padding

Add 20 pixels of padding around a text widget.

🟡 Level 2: Row & Column
6. Row

Display three icons in a row:

Home
Favorite
Settings
*
*
* */









/*

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Title
            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // Email
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),

            const SizedBox(height: 20),

            // Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),

            const SizedBox(height: 30),

            // Login Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  print("Login button clicked");
                },
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Sign up
            TextButton(
              onPressed: () {
                print("Create account clicked");
              },
              child: const Text("Don't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}

*/


/*

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            children: [

              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              // Name
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              // Email
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }

                  if (!value.contains("@")) {
                    return "Enter a valid email";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 15),

              // Password
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }

                  if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 25),

              // Register button
              SizedBox(
                width: double.infinity,
                height: 50,

                child: ElevatedButton(
                  onPressed: () {

                    if (_formKey.currentState!.validate()) {

                      print("Name: ${nameController.text}");
                      print("Email: ${emailController.text}");
                      print("Password: ${passwordController.text}");

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Registration Successful!"),
                        ),
                      );
                    }
                  },

                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

/*




import 'package:flutter/material.dart';

void main() {
runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
const MyApplication({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: const DashboardPage(),
);
}
}

class DashboardPage extends StatelessWidget {
const DashboardPage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Dashboard"),
centerTitle: true,
),

// Drawer Menu
drawer: Drawer(
child: ListView(
children: [

const DrawerHeader(
decoration: BoxDecoration(
color: Colors.blue,
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Icon(
Icons.account_circle,
size: 60,
color: Colors.white,
),

SizedBox(height: 10),

Text(
"Welcome Arun",
style: TextStyle(
color: Colors.white,
fontSize: 20,
),
),
],
),
),

ListTile(
leading: const Icon(Icons.dashboard),
title: const Text("Dashboard"),
onTap: () {
Navigator.pop(context);
},
),

ListTile(
leading: const Icon(Icons.person),
title: const Text("Profile"),
onTap: () {
print("Profile clicked");
},
),

ListTile(
leading: const Icon(Icons.settings),
title: const Text("Settings"),
onTap: () {
print("Settings clicked");
},
),

ListTile(
leading: const Icon(Icons.logout),
title: const Text("Logout"),
onTap: () {
print("Logout clicked");
},
),
],
),
),

// Dashboard Body
body: Padding(
padding: const EdgeInsets.all(20),

child: Column(
crossAxisAlignment: CrossAxisAlignment.start,

children: [

const Text(
"Welcome Back!",
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 10),

const Text(
"Here is your dashboard",
style: TextStyle(
fontSize: 16,
color: Colors.grey,
),
),

const SizedBox(height: 25),

// Dashboard Cards
Row(
children: [

Expanded(
child: Card(
child: Padding(
padding: const EdgeInsets.all(20),

child: Column(
children: [
const Icon(
Icons.people,
size: 40,
color: Colors.blue,
),

const SizedBox(height: 10),

const Text(
"Users",
style: TextStyle(fontSize: 18),
),

const SizedBox(height: 5),

const Text(
"120",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.bold,
),
),
],
),
),
),
),

Expanded(
child: Card(
child: Padding(
padding: const EdgeInsets.all(20),

child: Column(
children: [
const Icon(
Icons.shopping_cart,
size: 40,
color: Colors.green,
),

const SizedBox(height: 10),

const Text(
"Orders",
style: TextStyle(fontSize: 18),
),

const SizedBox(height: 5),

const Text(
"50",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.bold,
),
),
],
),
),
),
),
],
),

const SizedBox(height: 20),

// Another Card
Card(
child: ListTile(
leading: const Icon(
Icons.attach_money,
size: 40,
),

title: const Text("Total Revenue"),

subtitle: const Text("This month's revenue"),

trailing: const Text(
"\$5,000",
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
),
),
],
),
),
);
}
}
*/

/*

import 'package:flutter/material.dart';

void main() {
runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
const MyApplication({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: const ProfilePage(),
);
}
}

class ProfilePage extends StatelessWidget {
const ProfilePage({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Profile"),
centerTitle: true,
),

body: Padding(
padding: const EdgeInsets.all(20),

child: Column(
children: [

const SizedBox(height: 30),

// Profile Image
const CircleAvatar(
radius: 60,
child: Icon(
Icons.person,
size: 70,
),
),

const SizedBox(height: 20),

// Name
const Text(
"Arun Sagar Rai",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 5),

// Email
const Text(
"arun@example.com",
style: TextStyle(
fontSize: 16,
color: Colors.grey,
),
),

const SizedBox(height: 30),

// Profile Information
Card(
child: Column(
children: [

ListTile(
leading: const Icon(Icons.person),
title: const Text("Name"),
subtitle: const Text("Arun Sagar Rai"),
),

ListTile(
leading: const Icon(Icons.email),
title: const Text("Email"),
subtitle: const Text("arun@example.com"),
),

ListTile(
leading: const Icon(Icons.phone),
title: const Text("Phone"),
subtitle: const Text("9800000000"),
),

ListTile(
leading: const Icon(Icons.location_on),
title: const Text("Address"),
subtitle: const Text("Kathmandu, Nepal"),
),
],
),
),

const SizedBox(height: 25),

// Edit Profile Button
SizedBox(
width: double.infinity,
height: 50,

child: ElevatedButton(
onPressed: () {
print("Edit Profile clicked");
},

child: const Text(
"Edit Profile",
style: TextStyle(fontSize: 18),
),
),
),
],
),
),
);
}
}*/


