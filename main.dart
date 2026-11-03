import 'package:flutter/material.dart';

void main() {
  runApp(const MyImageApp());
}

class MyImageApp extends StatelessWidget {
  const MyImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ganijuru Ishimwe Elie 16'),
          backgroundColor: Colors.blue, // Optional styling for the top bar
        ),
        body: Center(
          child: Image.asset(
            'assets/images/ganijuru.jfif',
            width: 400,
            height: 400,
            fit: BoxFit.contain,
          ),
        ),
        // Added the navigation bar with Home, Person, Delete, and Settings
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Keeps items evenly spaced
          currentIndex: 0, // Highlights the 'Home' icon by default
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delete),
              label: 'Delete',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          onTap: (index) {
            // This is where you can code what happens when a button is clicked
            print('Clicked tab index: $index');
          },
        ),
      ),
    );
  }
}
