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
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Center(
            child: Text(
              "My App Bar",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),),
          ],
        ),
        body: Center( // Wraped Container widget with Center which puts the Container widget in the center
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              //Curving the corners
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(25),
            //You can add another widget by adding child
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 64,
            ),

          ),
        ), //This is the body component of the Scaffold, Inside body we have Container widget which is a flexible widget that is useful for many purposes
      ),
    );
  }
}
