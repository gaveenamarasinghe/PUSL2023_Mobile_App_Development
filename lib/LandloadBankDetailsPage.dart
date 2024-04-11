import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_new/homepage.dart';

class LandlordBankDetailsPage extends StatefulWidget {
  final String postId;

  LandlordBankDetailsPage({required this.postId});

  @override
  _LandlordBankDetailsPageState createState() => _LandlordBankDetailsPageState();
}

class _LandlordBankDetailsPageState extends State<LandlordBankDetailsPage> {
  String _selectedBank = 'Bank A';
  String _branch = '';
  String _accountNumber = '';
  String _phoneNumber = '';

  void saveBankDetails() {
    DatabaseReference postRef =
    FirebaseDatabase.instance.ref().child('posts').child(widget.postId);

    postRef.update({
      'bankName': _selectedBank,
      'branch': _branch,
      'accountNumber': _accountNumber,
      'phoneNumber': _phoneNumber,
    }).then((_) {
      print('Bank details updated successfully');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }).catchError((error) {
      print('Failed to update bank details: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Landlord\'s Bank Details',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.greenAccent,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bank Name',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter bank name',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _selectedBank = value;
                    });
                  },
                ),
                SizedBox(height: 10.0),
                Text(
                  'Branch',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter branch',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _branch = value;
                    });
                  },
                ),
                SizedBox(height: 10.0),
                Text(
                  'Account Number',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter account number',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _accountNumber = value;
                    });
                  },
                ),
                SizedBox(height: 10.0),
                Text(
                  'Phone No',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Enter phone number',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _phoneNumber = value;
                    });
                  },
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    saveBankDetails();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
