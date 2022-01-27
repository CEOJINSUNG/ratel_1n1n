import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/signup/signup_view.dart';

class SignupComplete extends StatefulWidget {
  const SignupComplete({Key key}) : super(key: key);

  @override
  _SignupCompleteState createState() => _SignupCompleteState();
}

class _SignupCompleteState extends State<SignupComplete> {
  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          leading: new IconButton(
              icon: new Icon(Icons.close,
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
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(top: _size.height * 0.3),
                          child: Text("이미지 들어갈 자리"),
                        )),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.only(
                              top: _size.height * 0.05,
                              bottom: _size.height * 0.01),
                          child: Text("회원가입이 완료되었습니다!",
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff010608)))),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text("쿠폰함에 작은 선물을 넣어드렸어요😉",
                          style: TextStyle(
                              fontSize: 16, color: Color(0xff202426))),
                    )
                  ]),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: _size.width * 0.9,
                  height: 56,
                  margin: EdgeInsets.only(
                      bottom: _size.height * 0.05, top: _size.height * 0.1),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => SignupView()),
                          (Route<dynamic> route) => false);
                    },
                    child: Text("n분의 1 시작하기",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff))),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff010608)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)))),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
