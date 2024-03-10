import 'package:flutter/material.dart';

class ViewAdd extends StatefulWidget {
  const ViewAdd({Key? key}) : super(key: key);

  @override
  State<ViewAdd> createState() => _ViewAddState();
}

class _ViewAddState extends State<ViewAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Add Page"), // Set the title
      ),
      body: Container(
        color: Colors.greenAccent, // Set the background color
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            buildCard("Image 1", "House 1", "images/h1.jpg"),
            buildCard("Image 2", "House 2","images/h2.jpg" ),
            buildCard("Image 3", "House 3","images/h3.jpg"),
            buildCard("Image 4", "House 4","images/h4.webp"),
            buildCard("Image 5", "House 5","images/h5.jpg"),
            buildCard("Image 6", "House 6","images/h6.jpg"),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String imageLabel, String topic, String imagePath) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          // Handle tap on the card
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 150.0, // Adjust the height as needed
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                topic,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
