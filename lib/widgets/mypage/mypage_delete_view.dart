import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_delete_account.dart';

final explanation =
    TextStyle(fontSize: 16, color: Color.fromRGBO(32, 36, 38, 0.8));

class MyPageDeleteView extends StatefulWidget {
  const MyPageDeleteView({Key key}) : super(key: key);

  @override
  _MyPageDeleteViewState createState() => _MyPageDeleteViewState();
}

class _MyPageDeleteViewState extends State<MyPageDeleteView> {
  bool _delete = false;
  bool _deleteText = false;

  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
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
          "회원탈퇴",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff010608)),
        ),
        centerTitle: false,
        elevation: 0,
        titleSpacing: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 24, left: _size.width * 0.05),
                    child: Text(
                      "잠깐! 회원탈퇴하기전에 꼭 확인해주세요.",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff051a1a)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                    child: Text(
                      "1. 1/n 포인트가 사라져요.",
                      style: explanation,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, left: _size.width * 0.05),
                    child: Text(
                      "2. 더이상 자유로운 분할결제가 불가능해요.",
                      style: explanation,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 8, left: _size.width * 0.05, bottom: 32),
                    child: Text(
                      "3. 기존 진행중이던 분할결제를 완료해야합니다.",
                      style: explanation,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(
                              left: _size.width * 0.05, right: 8),
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: IconButton(
                                padding: EdgeInsets.all(0),
                                icon: Icon(
                                  Icons.check,
                                  size: 24,
                                  color: _delete
                                      ? Color(0xff26c1f0)
                                      : Color(0xffdbdbdb),
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (_delete) {
                                      _delete = false;
                                      _deleteText = true;
                                    } else {
                                      _delete = true;
                                      _deleteText = false;
                                    }
                                  });
                                }),
                          )),
                      Text(
                        "위 내용을 확인했습니다.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff202426)),
                      )
                    ],
                  ),
                  (_deleteText
                      ? Container(
                          margin: EdgeInsets.only(
                              top: 16, left: _size.width * 0.05),
                          child: Text(
                            "체크박스를 동의해주세요.",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xfff72b2b)),
                          ),
                        )
                      : Container())
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: _size.height * 0.05, top: _size.height * 0.05),
                width: _size.width * 0.9,
                height: 56,
                decoration: BoxDecoration(
                    color: _delete ? Color(0xff26c1f0) : Color(0xffdbdbdb),
                    borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: TextButton(
                  child: Text(
                    "회원탈퇴",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)),
                  ),
                  onPressed: () {
                    if (_delete) {
                      setState(() {
                        _deleteText = false;
                      });
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => MyPageDeleteAccount()),
                          (route) => false);
                    } else {
                      setState(() {
                        _deleteText = true;
                      });
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
