import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/signup/signup_password.dart';

class SignupAccount extends StatefulWidget {
  const SignupAccount({Key key}) : super(key: key);

  @override
  _SignupAccountState createState() => _SignupAccountState();
}

class _SignupAccountState extends State<SignupAccount> {
  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios,
                  color: const Color(0xff070306), size: 24),
              onPressed: () => Navigator.of(context).pop()),
          elevation: 0,
          titleSpacing: 0,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: _size * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 24, bottom: 32),
                        child: Text(
                          "빠른 결제를 위해 계좌를\n등록해주세요.",
                          style: TextStyle(
                              color: Color(0xff010608),
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        )),
                    FractionallySizedBox(
                      widthFactor: 0.9,
                      child: Container(
                        padding: const EdgeInsets.only(top: 28, bottom: 28),
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(
                                color: Color(0xff010608),
                                width: 1,
                                style: BorderStyle.solid)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(bottom: 8),
                              child: new IconButton(
                                  icon: new Icon(Icons.add_circle_outline,
                                      size: 32, color: Color(0xff051a1a)),
                                  onPressed: () {}),
                            ),
                            Text(
                              "계좌 등록하기",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(32, 36, 38, 0.6)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Text("다음에 추가할게요!",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff26c1f0))),
                    ),
                    Text("계좌를 동록해주세요.",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xfff72b2b))),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: _size * 0.05, bottom: 40, top: 32),
              child: SizedBox(
                width: _size * 0.9,
                height: 56,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupPassword()));
                  },
                  child: Text("다음",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                      )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffdbdbdb)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0)))),
                ),
              ),
            )
          ],
        ))));
  }
}
