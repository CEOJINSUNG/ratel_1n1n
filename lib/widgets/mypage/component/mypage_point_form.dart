import 'package:flutter/material.dart';

class MyPagePointForm extends StatefulWidget {
  final String date;
  final String reason;
  final int money;
  const MyPagePointForm({Key key, this.date, this.reason, this.money})
      : super(key: key);

  @override
  _MyPagePointFormState createState() => _MyPagePointFormState();
}

class _MyPagePointFormState extends State<MyPagePointForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color(0xffdbdbdb),
                  width: 1,
                  style: BorderStyle.solid))),
      padding: EdgeInsets.only(
          left: _width * 0.05, right: _width * 0.05, bottom: 16),
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Text(widget.date,
                  style: TextStyle(
                      fontSize: 14, color: Color.fromRGBO(32, 36, 38, 0.6)))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(widget.reason,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff202426))),
              Text(widget.money > 0 ? "+ ${widget.money}" : "- ${widget.money.abs()}",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: widget.money > 0
                          ? Color(0xff26c1f0)
                          : Color(0xfff72b2b)))
            ],
          )
        ],
      ),
    );
  }
}
