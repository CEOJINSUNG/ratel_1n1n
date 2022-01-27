import 'package:flutter/material.dart';

class MyPagePaymentForm extends StatefulWidget {
  final String account;
  const MyPagePaymentForm({Key key, this.account}) : super(key: key);

  @override
  _MyPagePaymentFormState createState() => _MyPagePaymentFormState();
}

class _MyPagePaymentFormState extends State<MyPagePaymentForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.9,
      height: 56,
      margin: EdgeInsets.only(left: _size.width * 0.05, bottom: 16),
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              style: BorderStyle.solid,
              color: Color.fromRGBO(1, 6, 8, 0.4)),
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: _size.width * 0.7,
            height: 24,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0), alignment: Alignment.centerLeft),
              onPressed: () {},
              child: Text(
                widget.account,
                style: TextStyle(fontSize: 16, color: Color(0xff010608)),
              ),
            ),
          ),
          IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
              icon: Icon(Icons.arrow_forward_ios,
                  size: 24, color: Color(0xff050407)),
              onPressed: () {})
        ],
      ),
    );
  }
}
