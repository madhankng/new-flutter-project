import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DummyTwo extends StatefulWidget {
  const DummyTwo({Key? key}) : super(key: key);
  @override
  State<DummyTwo> createState() => _DummyTwoState();
}

class _DummyTwoState extends State<DummyTwo> {
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  bool? isChecked = false;
  bool? isCorrect = false;
  bool? isCheck = false;
  bool? isCorrected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(30.0),
                  height: 130,
                  width: double.infinity,
                  color: Colors.teal.shade900,
                  child: Row(
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Call for Help?',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: Size(10, 10)),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 170,
                  width: double.infinity,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: getImage,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 40.0,
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundColor: Colors.black,
                            child: ClipOval(
                              child: (_image != null)
                                  ? Image.file(
                                      _image!,
                                      fit: BoxFit.fill,
                                    )
                                  : Icon(
                                      Icons.add_a_photo,
                                      size: 30,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Rajesh kannan L",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.grey.shade400,
                        minHeight: 5.0,
                        valueColor: AlwaysStoppedAnimation(Colors.green),
                        value: 0.75,
                      ),
                    ],
                  ),
                ),
                CheckboxListTile(
                  activeColor: Colors.green,
                  checkboxShape: CircleBorder(),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "About Me",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Basic information about you and your business.",
                    style: TextStyle(fontSize: 12),
                  ),
                  value: isChecked,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked = newBool;
                    });
                  },
                ),
                Divider(
                  height: 0.2,
                  thickness: 2,
                  indent: 30.0,
                  endIndent: 20.0,
                ),
                CheckboxListTile(
                  activeColor: Colors.green,
                  checkboxShape: CircleBorder(),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "Business Location",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Get business leads near your location.",
                    style: TextStyle(fontSize: 12),
                  ),
                  value: isCorrect,
                  onChanged: (newBool) {
                    setState(() {
                      isCorrect = newBool;
                    });
                  },
                ),
                Divider(
                  height: 0.2,
                  thickness: 2,
                  indent: 30.0,
                  endIndent: 20.0,
                ),
                CheckboxListTile(
                  activeColor: Colors.green,
                  checkboxShape: CircleBorder(),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "Work Experience",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Add work samples from your past experience.",
                    style: TextStyle(fontSize: 12),
                  ),
                  value: isCheck,
                  onChanged: (newBool) {
                    setState(() {
                      isCheck = newBool;
                    });
                  },
                ),
                Divider(
                  height: 0.2,
                  thickness: 2,
                  indent: 30.0,
                  endIndent: 20.0,
                ),
                CheckboxListTile(
                  activeColor: Colors.green,
                  checkboxShape: CircleBorder(),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "Get Reviews",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  subtitle: Text(
                    "Ask your previous customer to write a review.",
                    style: TextStyle(fontSize: 12),
                  ),
                  value: isCorrected,
                  onChanged: (newBool) {
                    setState(() {
                      isCorrected = newBool;
                      showAlert(context);
                    });
                  },
                ),
                Divider(
                  height: 0.2,
                  thickness: 2,
                  indent: 30.0,
                  endIndent: 20.0,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text('Congrats, Rajesh'),
          actions: <Widget>[
            TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
