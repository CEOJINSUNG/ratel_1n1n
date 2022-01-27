import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/component/address_form.dart';

class MyPageAddressEdit extends StatefulWidget {
  const MyPageAddressEdit({ Key key }) : super(key: key);

  @override
  _MyPageAddressEditState createState() => _MyPageAddressEditState();
}

class _MyPageAddressEditState extends State<MyPageAddressEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          padding: EdgeInsets.all(0),
          icon: Icon(Icons.arrow_back_ios, size: 24, color: Color(0xff050407)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "주소 변경하기",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff010608)),
        ),
        centerTitle: false,
        elevation: 0,
        titleSpacing: 0,
      ),
      body: AddressForm(),
    );
  }
}