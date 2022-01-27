import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/mypage/component/mypage_point_form.dart';

final titleStyle = TextStyle(
    fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff202426));

class MyPagePoint extends StatefulWidget {
  const MyPagePoint({Key key}) : super(key: key);

  @override
  _MyPagePointState createState() => _MyPagePointState();
}

class _MyPagePointState extends State<MyPagePoint> {
  int _point = 10000;

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
          "1/n 포인트",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 24, left: _size.width * 0.05),
                child: Text("총 포인트", style: titleStyle),
              ),
              Container(
                margin: EdgeInsets.only(top: 8, left: _size.width * 0.05),
                child: Text("$_point 원",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff202426))),
              ),
              Container(
                margin: EdgeInsets.only(top: 32, left: _size.width * 0.05),
                child: Text("사용내역", style: titleStyle),
              ),
              Container(
                width: _size.width,
                height: 1,
                margin: EdgeInsets.only(top: 16, bottom: 16),
                color: Color(0xffdbdbdb),
              ),
              MyPagePointForm(
                date: "2021.04.13",
                reason: "결제시 사용",
                money: -10000,
              ),
              MyPagePointForm(
                date: "2021.04.13",
                reason: "가입 보상",
                money: 10000,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
