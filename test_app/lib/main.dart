import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode:
          isDarkMode ? ThemeMode.dark : ThemeMode.light, // must has this code
      home: Scaffold(
        appBar: AppBar(
          title: Text("Switch light/dark"),
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
              onPressed: toggleTheme,
            ),
          ],
        ),
        body: Center(
          child: Text(
            "Current theme: ${isDarkMode ? 'Dark' : 'Light'}",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
