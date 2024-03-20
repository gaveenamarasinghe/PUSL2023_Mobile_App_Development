import 'package:flutter/material.dart';
import 'Postad02.dart'; // Import the Postad02.dart file

class PostAdd extends StatefulWidget {
  const PostAdd({Key? key}) : super(key: key);

  @override
  State<PostAdd> createState() => _PostAddState();
}

class _PostAddState extends State<PostAdd> {
  String _selectedOption = 'House Rentals'; // Default selected option
  String _location = 'Colombo'; // Default location
  int _numberOfBeds = 0; // Default number of beds
  int _numberOfBathrooms = 0; // Default number of bathrooms
  bool _privateEntrance = false; // Default private entrance option
  bool _lower = false; // Default lower option
  bool _upper = false; // Default upper option

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle back button press
        Navigator.pop(context);
        return false; // Prevent default back button behavior
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Post Ad',
            style: TextStyle(color: Colors.white), // Change title color to white
          ),
          centerTitle: true, // Center the title
          backgroundColor: Colors.blue, // Change app bar color to blue
        ),
        backgroundColor: Colors.greenAccent, // Set background color to green
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
                    'Select the Category:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  DropdownButton<String>(
                    value: _selectedOption,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedOption = newValue!;
                      });
                    },
                    items: <String>[
                      'House Rentals',
                      'Apartments Rentals',
                      'Room & Annex Rentals',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.location_on), // Location icon
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          readOnly: true,
                          controller: TextEditingController(text: _location),
                          decoration: InputDecoration(
                            hintText: 'Location',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          // Handle changing the location
                          setState(() {
                            _location = 'New Location'; // Change the location as needed
                          });
                        },
                        child: Text('Change'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Number of Beds:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        _numberOfBeds = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Number of Bathrooms:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        _numberOfBathrooms = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Select Features (Optional):', // Changed the text to "Select Features (Optional)"
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Text('Private Entrance'),
                      Checkbox(
                        value: _privateEntrance,
                        onChanged: (bool? value) {
                          setState(() {
                            _privateEntrance = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Lower'),
                      Checkbox(
                        value: _lower,
                        onChanged: (bool? value) {
                          setState(() {
                            _lower = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Upper'),
                      Checkbox(
                        value: _upper,
                        onChanged: (bool? value) {
                          setState(() {
                            _upper = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigate to Postad02.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Postad02()), // Assuming Postad02.dart is the destination
            );
          },
          child: Icon(Icons.arrow_forward), // Icon for the button
          backgroundColor: Colors.blue, // Background color of the button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Position of the button
      ),
    );
  }
}
