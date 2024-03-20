import 'package:flutter/material.dart';

class Postad03 extends StatefulWidget {
  const Postad03({Key? key}) : super(key: key);

  @override
  State<Postad03> createState() => _Postad03State();
}

class _Postad03State extends State<Postad03> {
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
      backgroundColor: Colors.greenAccent, // Set background color of the page to green
      body: Center(
        child: Container(
          width: 600, // Set width of the square design
          height: 600, // Set height of the square design
          decoration: BoxDecoration(
            color: Colors.white54, // Set background color of the square design to white
            borderRadius: BorderRadius.circular(20), // Add border radius for rounded corners
          ),
          padding: EdgeInsets.all(20), // Add padding to the container
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/rent.png', // Path to your image asset
                width: 100, // Adjust width of the image as needed
                height: 100, // Adjust height of the image as needed
                fit: BoxFit.contain, // Adjust fit property to contain
              ),
              SizedBox(height: 20), // Add spacing between image and text
              Text(
                'Rent', // Title for the rent section
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'What is the Rent of the Property?', // Description for the rent section
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Rent (per month)', // Placeholder for the rent input field
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Add your bank details logic here
                },
                child: Text('Bank Details'), // Text for the button
              ),
              SizedBox(height: 20),
              Text(
                'Add Photos (Up to 3)', // Title for the add photos section
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Upload Pictures of your Rooms Annex and Rentals', // Description for the add photos section
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Placeholder icons for adding pictures
                  Icon(Icons.add_photo_alternate, size: 50),
                  Icon(Icons.add_photo_alternate, size: 50),
                  Icon(Icons.add_photo_alternate, size: 50),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your post logic here
                },
                child: Text('Add your Post'), // Text for the button
              ),
            ],
          ),
        ),
      ),
    );
  }
}
