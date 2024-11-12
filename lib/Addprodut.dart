import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProdauctPage extends StatefulWidget {
  @override
  _AddProdauctPageState createState() => _AddProdauctPageState();
}

class _AddProdauctPageState extends State<AddProdauctPage> {
  String companyName = '';
  String commercialActivities = '';
  String email = '';
  String phoneNumber = '';
  String address = '';
  String city = '';
  String state = '';
  String zip = '';
  String productType = '';

  File? _image;

  Color _networkButtonColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add product',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
            icon: Icon(Icons.abc),
            onPressed: () {
              setState(() {
                _networkButtonColor = Colors.blue;
              });
            },
            color: _networkButtonColor,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'images/seeTech.png',
              width: 150,
              height: 100,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Product Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  companyName = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Price',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  commercialActivities = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Product Details',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  phoneNumber = value;
                });
              },
            ),
            SizedBox(height: 10),
             TextField(
              decoration: InputDecoration(
                labelText: 'Pictures of Product',
                border: OutlineInputBorder(),
              ),
              readOnly: true,
              // onTap: _getImage,
              controller: TextEditingController(
                  text: _image != null ? _image!.path : ''),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Security',
                      onPressed: () {
                        setState(() {
                          _networkButtonColor = Colors.blue;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Supplies',
                      onPressed: () {
                        setState(() {
                          _networkButtonColor = Colors.blue;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Erpsystem',
                      onPressed: () {
                        setState(() {
                          _networkButtonColor = Colors.blue;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Network',
                      onPressed: () {
                        // Add functionality here
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      buttonText: 'Software',
                      onPressed: () {
                        // Add functionality here
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the Save button
                // For example, you can save the form data here
              },
              child: Text(
                'Save',
                style: TextStyle(
                    color: Colors.white), // Change text color to white
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                    Color.fromARGB(
                        255, 0, 0, 0)), // Change button color to green
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 251, 251),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomButton({
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 14),
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.blue;
            }
            return Colors.grey;
          }),
        ),
      ),
    );
  }
}
