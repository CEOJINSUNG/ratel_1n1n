import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_address.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_delete_view.dart';

final titleStyle = TextStyle(
    fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff202426));

final contentStyle =
    TextStyle(fontSize: 16, color: Color.fromRGBO(1, 6, 8, 0.6));

class MyPageProfile extends StatefulWidget {
  const MyPageProfile({Key key}) : super(key: key);

  @override
  _MyPageProfileState createState() => _MyPageProfileState();
}

class _MyPageProfileState extends State<MyPageProfile> {
  String userName = "이름";
  String userPhoneNumber = "010-0000-0000";
  String userEmail = "user@1n1n.io";
  String userAddress = "여기는 주소입니다.";
  bool market = false;

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
          "내 정보 관리",
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
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 24, left: _size.width * 0.05),
                child: Text(
                  "이름",
                  style: titleStyle,
                ),
              ),
              Container(
                width: _size.width * 0.9,
                height: 56,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(1, 6, 8, 0.2),
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    color: Color(0xffeeeeee)),
                child: Text(
                  "$userName",
                  style: contentStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                child: Text(
                  "휴대폰번호",
                  style: titleStyle,
                ),
              ),
              Container(
                width: _size.width * 0.9,
                height: 56,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(1, 6, 8, 0.2),
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    color: Color(0xffeeeeee)),
                child: Text(
                  "$userPhoneNumber",
                  style: contentStyle,
                ),
              ),
              Container(
                width: _size.width * 0.9,
                height: 56,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 24, left: _size.width * 0.05),
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: Color.fromRGBO(1, 6, 8, 0.2),
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: SizedBox(
                  width: _size.width * 0.9,
                  height: 56,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        alignment: Alignment.center, padding: EdgeInsets.zero),
                    onPressed: () {},
                    child: Text(
                      "본인인증하고 정보 변경하기",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(5, 26, 26, 0.6),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                child: Text(
                  "이메일주소",
                  style: titleStyle,
                ),
              ),
              Container(
                width: _size.width * 0.9,
                height: 56,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(1, 6, 8, 0.2),
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    color: Color(0xffeeeeee)),
                child: Text(
                  "$userEmail",
                  style: contentStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(0.0),
                      width: 24,
                      child: IconButton(
                        padding: EdgeInsets.all(0.0),
                        alignment: Alignment.center,
                        icon: Icon(Icons.check,
                            size: 24,
                            color:
                                market ? Color(0xff26c1f0) : Color(0xffdbdbdb)),
                        onPressed: () {
                          setState(() {
                            if (market) {
                              market = false;
                            } else {
                              market = true;
                            }
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      child: Text(
                        "SMS 마케팅 정보 수신 동의(선택)",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff66696a)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: _size.width * 0.05, top: 8),
                child: Text(
                  "서비스 혜택, 마케팅 관련 정보 수신에 동의합니다.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff051a1a),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                child: Text(
                  "주소 관리",
                  style: titleStyle,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Color.fromRGBO(1, 6, 8, 0.4)),
                    borderRadius: BorderRadius.all(Radius.circular(6.0))),
                padding: EdgeInsets.only(left: 16),
                height: 56,
                width: _size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: _size.width * 0.7,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.all(0),
                            alignment: Alignment.centerLeft),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyPageAddress()));
                        },
                        child: Text(
                          "$userAddress",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff010608)),
                        ),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_forward_ios,
                            size: 24, color: Color(0xff050407)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyPageAddress()));
                        })
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: _size.width * 0.05),
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      alignment: Alignment.centerLeft),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyPageDeleteView()));
                  },
                  child: Text(
                    "회원탈퇴",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(5, 26, 26, 0.6),
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
