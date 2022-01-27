import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/component/address_form.dart';

class MyPageAddressAdd extends StatefulWidget {
  const MyPageAddressAdd({ Key key }) : super(key: key);

  @override
  _MyPageAddressAddState createState() => _MyPageAddressAddState();
}

class _MyPageAddressAddState extends State<MyPageAddressAdd> {
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
          "주소 추가하기",
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