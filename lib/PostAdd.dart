import 'package:flutter/material.dart';

class PostAdd extends StatefulWidget {
  const PostAdd({Key? key}) : super(key: key);

  @override
  State<PostAdd> createState() => _PostAddState();
}

class _PostAddState extends State<PostAdd> {
  String _selectedOption = 'Option 1';
  int? _selectedRadio;

  String _description = '';
  String _address = '';
  String _price = '';

  List<String> _images = [
    'images/h1.jpg',
    'images/h2.jpg',
    'images/h3.jpg',
  ];

  void _handleRadioValueChanged(int? value) {
    setState(() {
      _selectedRadio = value;
    });
  }

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
          title: Text('Post Add'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.greenAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select the Area :',
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
                  'Option 1',
                  'Option 2',
                  'Option 3',
                  'Option 4'
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
              Text(
                'Radio Buttons:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _selectedRadio,
                    onChanged: _handleRadioValueChanged,
                  ),
                  Text(
                    'Houses',
                    style: TextStyle(color: Colors.black),
                  ),
                  Radio(
                    value: 2,
                    groupValue: _selectedRadio,
                    onChanged: _handleRadioValueChanged,
                  ),
                  Text(
                    'Apartments',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Images:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(_images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Text(
                'Description:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _description = value;
                  });
                },
              ),
              Text(
                'Address:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _address = value;
                  });
                },
              ),
              Text(
                'Price:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _price = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Add post functionality
                },
                child: Text('Add Post'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
