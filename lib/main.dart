import 'package:flutter/material.dart';
import 'body_page.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xff29cccc),
            leading: IconButton(
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
                Text(
                  'Continue  >',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )
              ],
            ),
          ),
        ),
        body: MyProfile(),
      ),
    ),
  );
}


