import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118,
      width: 100,

        child: Stack(
          fit: StackFit.expand,
          // ignore: deprecated_member_use
          overflow: Overflow.visible,

          children: [

            CircleAvatar(
              backgroundColor: Color(0xff29cccc),
              // backgroundImage: AssetImage('images/upload1.png'),
              child: IconButton(
                icon: Icon(
                  Icons.upload_file,
                  size: 90.0,
                  color: Colors.black,

                ),
                onPressed: () {},
                padding: EdgeInsets.only(right: 65.0,bottom: 66.0),
              ),
            ),

          ],
        ),

    );
  }
}
