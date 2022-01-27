import 'package:flutter/material.dart';

class MyPagefavorites extends StatefulWidget {
  const MyPagefavorites({ Key key }) : super(key: key);

  @override
  _MyPagefavoritesState createState() => _MyPagefavoritesState();
}

class _MyPagefavoritesState extends State<MyPagefavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 24, color: Color(0xff050407)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "찜한 스토어",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff010608)),
        ),
        centerTitle: false,
        elevation: 0,
        titleSpacing: 0,
      ),
    );
  }
}