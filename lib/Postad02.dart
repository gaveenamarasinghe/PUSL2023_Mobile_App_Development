import 'package:flutter/material.dart';
import 'Postad03.dart';

class Postad02 extends StatefulWidget {
  const Postad02({Key? key}) : super(key: key);

  @override
  State<Postad02> createState() => _Postad02State();
}

class _Postad02State extends State<Postad02> {
  TextEditingController _addressController = TextEditingController(); // Controller for the address text field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Post Ad',
          style: TextStyle(color: Colors.white), // Set title color to white
        ),
        centerTitle: true, // Center the title
        backgroundColor: Colors.blue, // Set app bar color to blue
      ),
      backgroundColor: Colors.greenAccent, // Set background color to green accent
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Center(
          child: Container(
            width: 600, // Set width of the square design
            height: 600, // Set height of the square design
            decoration: BoxDecoration(
              color: Colors.white54, // Set background color of the square design
              borderRadius: BorderRadius.circular(20), // Add border radius for rounded corners
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address (Optional):',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Enter Your Street or House Number or Post Code:',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Title:', // New title after the address field
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Your Title Must Have At Least 5 Characters:', // New form title
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Description:', // New title for description
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Enter your Post Description:', // New form title for description
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  maxLines: 3, // Allowing multiple lines for description
                  decoration: InputDecoration(
                    hintText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to Postad03.dart page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Postad03()), // Ensure correct usage of Postad03 class
          );
        },
        child: Icon(Icons.arrow_forward), // Icon for the button
        backgroundColor: Colors.blue, // Background color of the button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Position of the button
    );
  }
}
