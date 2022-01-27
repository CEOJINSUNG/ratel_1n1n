import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/signup/signup_veri.dart';

class SignupView extends StatefulWidget {
  SignupView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 24, left: _size * 0.05),
                  child: Text(
                    "안녕하세요 처음오셨나요?",
                    style: TextStyle(
                        color: Color(0xff010608),
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 8, left: _size * 0.05),
                  child: Text(
                    "3분만에 회원가입하고 n분의 1 하세요!",
                    style: TextStyle(
                        color: Color.fromRGBO(32, 36, 38, 0.6),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.only(left: _size * 0.05, top: 32),
                child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: new SizedBox(
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupVeriView()));
                        },
                        child: Text(
                          "카카오톡으로 시작하기",
                          style: TextStyle(
                              color: Color(0xff010608),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xfffbe44d))),
                      ),
                    )),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: _size * 0.05, top: 16, bottom: 16),
                child: FractionallySizedBox(
                    widthFactor: 0.95,
                    child: new SizedBox(
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "애플 ID로 시작하기",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff010608))),
                      ),
                    )),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      text: '이미 회원이라면? ',
                      style: TextStyle(
                          fontSize: 14, color: Color.fromRGBO(1, 6, 8, 0.6)),
                      children: <TextSpan>[
                        TextSpan(
                            text: '로그인',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(1, 6, 8, 0.6),
                              decoration: TextDecoration.underline,
                            )),
                      ],
                    ),
                  ))
            ],
          ),
        )));
  }
}
