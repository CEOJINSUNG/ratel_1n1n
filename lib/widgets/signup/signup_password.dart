import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/signup/signup_complete.dart';

final passwordButtonStyle = TextStyle(
    fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff010608));

class SignupPassword extends StatefulWidget {
  const SignupPassword({Key key}) : super(key: key);

  @override
  _SignupPasswordState createState() => _SignupPasswordState();
}

class _SignupPasswordState extends State<SignupPassword> {
  List<int> password = [];
  List<int> repeat = [];
  int validation = 0;

  void addPass(int i, BuildContext context) {
    setState(() {
      if (password.length < 4) {
        password.add(i);
        if (password.length == 4) {
          validation = 1;
        }
      } else {
        repeat.add(i);
        for (int a = 0; a < repeat.length; a++) {
          if (repeat[a] != password[a]) {
            validation = 2;
          } else {
            validation = 1;
            if (repeat.length == 4 && a == 3) {
              password.clear();
              repeat.clear();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SignupComplete()));
            }
          }
        }
      }
    });
  }

  void backPass() {
    setState(() {
      if (password.length != 0 && password.length != 4) {
        password.removeLast();
      } else {
        repeat.removeLast();
        for (int a = 0; a < repeat.length; a++) {
          if (repeat[a] != password[a]) {
            validation = 2;
          } else {
            validation = 1;
            if (repeat.length == 4 && a == 3) {
              password.clear();
              repeat.clear();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SignupComplete()));
            }
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size.width;
    dynamic _height = MediaQuery.of(context).size.height;
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
            Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 24),
                      child: Text(
                          (password.length < 4
                              ? "비밀번호 4자리를 입력해주세요."
                              : "비밀번호 4자리를 다시 입력해주세요."),
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff010608))),
                    )),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 40,
                            margin: EdgeInsets.only(
                                left: _size * 0.03, right: _size * 0.03),
                            padding: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 2,
                                        color: (validation == 0
                                            ? password.length > 0
                                                ? Color(0xff26c1f0)
                                                : Color(0xffdbdbdb)
                                            : repeat.length > 0
                                                ? Color(0xff26c1f0)
                                                : Color(0xffdbdbdb))))),
                            child: new Icon(Icons.circle,
                                color: (validation == 0
                                    ? password.length > 0
                                        ? Color(0xff26c1f0)
                                        : Color(0xffdbdbdb)
                                    : repeat.length > 0
                                        ? Color(0xff26c1f0)
                                        : Color(0xffdbdbdb)),
                                size: 16),
                          ),
                          Container(
                            width: 40,
                            margin: EdgeInsets.only(
                                left: _size * 0.03, right: _size * 0.03),
                            padding: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 2,
                                        color: (validation == 0
                                            ? password.length > 1
                                                ? Color(0xff26c1f0)
                                                : Color(0xffdbdbdb)
                                            : repeat.length > 1
                                                ? Color(0xff26c1f0)
                                                : Color(0xffdbdbdb))))),
                            child: new Icon(Icons.circle,
                                color: (validation == 0
                                    ? password.length > 1
                                        ? Color(0xff26c1f0)
                                        : Color(0xffdbdbdb)
                                    : repeat.length > 1
                                        ? Color(0xff26c1f0)
                                        : Color(0xffdbdbdb)),
                                size: 16),
                          ),
                          Container(
                            width: 40,
                            margin: EdgeInsets.only(
                                left: _size * 0.03, right: _size * 0.03),
                            padding: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 2,
                                        color: (validation == 0
                                            ? password.length > 2
                                                ? Color(0xff26c1f0)
                                                : Color(0xffdbdbdb)
                                            : repeat.length > 2
                                                ? Color(0xff26c1f0)
                                                : Color(0xffdbdbdb))))),
                            child: new Icon(Icons.circle,
                                color: (validation == 0
                                    ? password.length > 2
                                        ? Color(0xff26c1f0)
                                        : Color(0xffdbdbdb)
                                    : repeat.length > 2
                                        ? Color(0xff26c1f0)
                                        : Color(0xffdbdbdb)),
                                size: 16),
                          ),
                          Container(
                            width: 40,
                            margin: EdgeInsets.only(
                                left: _size * 0.03, right: _size * 0.03),
                            padding: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 2,
                                        color: (validation == 0
                                            ? password.length > 3
                                                ? Color(0xff26c1f0)
                                                : Color(0xffdbdbdb)
                                            : repeat.length > 3
                                                ? Color(0xff26c1f0)
                                                : Color(0xffdbdbdb))))),
                            child: new Icon(Icons.circle,
                                color: (validation == 0
                                    ? password.length > 3
                                        ? Color(0xff26c1f0)
                                        : Color(0xffdbdbdb)
                                    : repeat.length > 3
                                        ? Color(0xff26c1f0)
                                        : Color(0xffdbdbdb)),
                                size: 16),
                          ),
                        ],
                      )),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: (validation == 2
                      ? Container(
                          margin: EdgeInsets.only(top: _height * 0.02),
                          child: Text("이전에 입력한 비밀번호와 일치하지 않습니다.",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffff5c5c))))
                      : Container()),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      bottom: 10,
                      top: MediaQuery.of(context).size.height * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: _size * 0.3,
                        height: _size * 0.3 * 0.72,
                        child: TextButton(
                          onPressed: () {
                            addPass(1, context);
                          },
                          child: Text(
                            "1",
                            style: passwordButtonStyle,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: _size * 0.01, right: _size * 0.01),
                        width: _size * 0.3,
                        height: _size * 0.3 * 0.72,
                        child: TextButton(
                          onPressed: () {
                            addPass(2, context);
                          },
                          child: Text(
                            "2",
                            style: passwordButtonStyle,
                          ),
                        ),
                      ),
                      Container(
                        width: _size * 0.3,
                        height: _size * 0.3 * 0.72,
                        child: TextButton(
                          onPressed: () {
                            addPass(3, context);
                          },
                          child: Text(
                            "3",
                            style: passwordButtonStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: _size * 0.3,
                          height: _size * 0.3 * 0.72,
                          child: TextButton(
                            onPressed: () {
                              addPass(4, context);
                            },
                            child: Text(
                              "4",
                              style: passwordButtonStyle,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: _size * 0.01, right: _size * 0.01),
                          width: _size * 0.3,
                          height: _size * 0.3 * 0.72,
                          child: TextButton(
                            onPressed: () {
                              addPass(5, context);
                            },
                            child: Text(
                              "5",
                              style: passwordButtonStyle,
                            ),
                          ),
                        ),
                        Container(
                          width: _size * 0.3,
                          height: _size * 0.3 * 0.72,
                          child: TextButton(
                            onPressed: () {
                              addPass(6, context);
                            },
                            child: Text(
                              "6",
                              style: passwordButtonStyle,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: _size * 0.3,
                        height: _size * 0.3 * 0.72,
                        child: TextButton(
                          onPressed: () {
                            addPass(7, context);
                          },
                          child: Text(
                            "7",
                            style: passwordButtonStyle,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: _size * 0.01, right: _size * 0.01),
                        width: _size * 0.3,
                        height: _size * 0.3 * 0.72,
                        child: TextButton(
                          onPressed: () {
                            addPass(8, context);
                          },
                          child: Text(
                            "8",
                            style: passwordButtonStyle,
                          ),
                        ),
                      ),
                      Container(
                        width: _size * 0.3,
                        height: _size * 0.3 * 0.72,
                        child: TextButton(
                          onPressed: () {
                            addPass(9, context);
                          },
                          child: Text(
                            "9",
                            style: passwordButtonStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: _size * 0.3,
                        height: _size * 0.3 * 0.72,
                        child: Text(
                          "",
                          style: passwordButtonStyle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: _size * 0.01, right: _size * 0.01),
                        width: _size * 0.3,
                        height: _size * 0.3 * 0.72,
                        child: TextButton(
                          onPressed: () {
                            addPass(0, context);
                          },
                          child: Text(
                            "0",
                            style: passwordButtonStyle,
                          ),
                        ),
                      ),
                      Container(
                          width: _size * 0.3,
                          height: _size * 0.3 * 0.72,
                          child: new IconButton(
                              icon: Icon(Icons.backspace, size: 36),
                              onPressed: () {
                                backPass();
                              })),
                    ],
                  ),
                )
              ],
            )
          ],
        ))));
  }
}
