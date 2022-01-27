import 'package:flutter/material.dart';
import 'package:ratel_1n1n/main.dart';

class CompleteViewForm extends StatefulWidget {
  final String title;
  final String reason;
  const CompleteViewForm({Key key, this.title, this.reason}) : super(key: key);

  @override
  _CompleteViewFormState createState() => _CompleteViewFormState();
}

class _CompleteViewFormState extends State<CompleteViewForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.close, size: 24, color: Color(0xff050407)),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                  (route) => false);
            },
          ),
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          titleSpacing: 0,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Wrap(children: <Widget>[
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: _size.height * 0.3),
                      child: Text("이미지 들어갈 자리"),
                    )),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.only(top: _size.height * 0.05),
                      child: Text(widget.title,
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff010608)))),
                ),
                (widget.reason.length > 0
                    ? Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(top: 8),
                            child: Text(widget.reason,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(1, 6, 8, 0.6)))),
                      )
                    : Container()),
              ]),
              Container(
                width: _size.width * 0.9,
                height: 56,
                margin: EdgeInsets.only(
                    bottom: _size.height * 0.05, top: _size.height * 0.1),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/home', (route) => false);
                  },
                  child: Text("홈으로 돌아가기",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff))),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff26c1f0)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0)))),
                ),
              ),
            ],
          ),
        )));
  }
}
