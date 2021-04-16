import 'package:flutter/material.dart';
import 'package:prescription/upload.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xff29cccc),
           leading:
              IconButton(
                icon: Icon(Icons.arrow_back_ios_outlined),
                onPressed: () {},
              ),
            actions: [
              IconButton(
                icon: Icon(Icons.help_outline_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_bag),
                onPressed: () {},
              ),
            ]),
bottomNavigationBar: BottomAppBar(

  child: Container(
    color: Color(0xff29cccc),
    width: 100.0,
    height: 60.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        Text('Continue  >'
        ,style: TextStyle(color: Colors.white,fontSize: 20.0),)
      ],
    ),
  ),
),
        body: MyProfile(),
      ),
    ),
  );
}

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(

          children: [
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


            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Container(
                  child: Row(
                    children: [
                      Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Row(children: [
                            Icon(
                              Icons.camera_alt_outlined,

                              color: Color(0xff29cccc),
                            ),
                            SizedBox(
                              width: 20.0,
                              height: 25.0,
                            ),
                            Text(
                              'Camera',
                              style: TextStyle(
                                color: Colors.teal.shade900,
                                fontSize: 18.0,
                              ),
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
                        EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(children: [
                        Icon(
                          Icons.image,
                          color: Color(0xff29cccc),
                        ),
                        SizedBox(
                          width: 20.0,
                          height: 25.0,
                        ),
                        Text(
                          'Gallery',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontSize: 18.0,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
    ]
            ),
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


      ]
        ),
      ),
    );
  }
}
