import 'package:flutter/material.dart';
import 'package:prescription/profile_pic.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  File file;
  void picImage() async {
    PickedFile pickedFile =
    await ImagePicker().getImage(source: ImageSource.gallery);
    file = File(pickedFile.path);
  }

  void getImage() async {
    PickedFile pickedFile =
    await ImagePicker().getImage(source: ImageSource.camera);
    file = File(pickedFile.path);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(children: [
          Center(
            child: ProfilePic(),
          ),
          Text(
            'Upload prescription',
            style: TextStyle(
              color: Color(0xff29cccc),
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              child: Row(
                children: [
                  Card(
                    margin:
                    EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(children: [
                        IconButton(
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            size: 30.0,
                            color: Color(0xff29cccc),
                          ),
                          onPressed: () {
                            getImage();
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                          height: 15.0,
                        ),
                        GestureDetector(
                          child: Text(
                            'Camera',
                            style: TextStyle(
                              color: Colors.teal.shade900,
                              fontSize: 18.0,
                            ),
                          ),
                          onTap: () {
                            getImage();
                          },
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Card(
                    margin:
                    EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(children: [
                        // Icon(
                        // Icons.image,
                        //color: Color(0xff29cccc),

                        // ),
                        IconButton(
                          icon: Icon(
                            Icons.image,
                            size: 30.0,
                            color: Color(0xff29cccc),
                          ),
                          onPressed: () {
                            picImage();
                          },
                          //padding: EdgeInsets.only(right: 65.0,bottom: 66.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          child: Text(
                            'Gallery',
                            style: TextStyle(
                              color: Colors.teal.shade900,
                              fontSize: 18.0,
                            ),
                          ),
                          onTap: () {
                            picImage();
                          },
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 30,
            width: 10,
          ),
          Text(
            'How a valid prescription looks',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          Container(
            child: Image(
              image: AssetImage('images/pre.png'),
            ),
            margin: EdgeInsets.fromLTRB(70, 20, 70, 70),
            //height: 150,
          ),
        ]),
      ),
    );
  }
}