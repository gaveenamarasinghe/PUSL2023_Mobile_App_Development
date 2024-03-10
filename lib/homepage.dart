import 'package:flutter/material.dart';
import 'PostAdd.dart';
import 'ViewAdd.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Green Lodge"),
        actions: [
          IconButton(
            onPressed: () {
              // Handle search action
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // Handle menu action
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(
        color: Colors.greenAccent, // Set the background color
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/bd.png', // Replace 'images/bd.png' with your image path
                height: 400, // Adjust the height of the image as needed
                width: 400, // Adjust the width of the image as needed
              ),
              SizedBox(height: 20.0), // Adding some space between image and main text
              Text(
                "Welcome to Green Lodge", // Main text
                style: TextStyle(
                  fontWeight: FontWeight.bold, // Bold the main text
                  fontSize: 24.0, // Increase the font size if needed
                ),
              ),
              SizedBox(height: 20.0), // Adding some space between main text and buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PostAdd()),
                  );
                },
                child: Text(
                  "Post Ads", // Button text
                  style: TextStyle(fontSize: 18.0), // Increase the font size if needed
                ),
              ),
              SizedBox(height: 20.0), // Adding some space between buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ViewAdd()),
                  );
                },
                child: Text(
                  "View Ads", // Button text
                  style: TextStyle(fontSize: 18.0), // Increase the font size if needed
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
