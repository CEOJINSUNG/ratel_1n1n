import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/mypage/component/mypage_menu_form.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_payment.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_point.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_profile.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key key}) : super(key: key);

  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  String _name = "user";
  int _point = 1000000;

  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 32, left: _size.width * 0.05),
                child: Text("안녕하세요 $_name님!",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff010608))),
              ),
              Container(
                  width: _size.width * 0.9,
                  margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 92,
                            height: 24,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(MaterialPageRoute(
                                          builder: (context) => MyPagePoint()));
                                },
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.centerLeft),
                                child: Text("1/n포인트",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(1, 6, 8, 0.6))))),
                        SizedBox(
                            width: 150,
                            height: 24,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(MaterialPageRoute(
                                          builder: (context) => MyPagePoint()));
                                },
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.centerRight),
                                child: Text("$_point P",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff010608)))))
                      ])),
              Container(
                  width: _size.width,
                  height: 72,
                  margin: const EdgeInsets.only(top: 14, bottom: 24),
                  padding: EdgeInsets.only(left: _size.width * 0.05),
                  color: Color(0xff6998d9),
                  alignment: Alignment.centerLeft,
                  child: Text("🥳 친구초대하고 5,000 포인트 무한 지급받기",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff)))),
              MyPageMenuForm(
                title: "내 정보 관리",
                icons: Icons.person_outline,
                marginBottom: 16,
                onCustomButton: () {
                  Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(builder: (context) => MyPageProfile()));
                },
              ),
              MyPageMenuForm(
                title: "결제 수단 관리",
                icons: Icons.credit_card,
                marginBottom: 16,
                onCustomButton: () {
                  Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(builder: (context) => MyPagePayment()));
                },
              ),
              MyPageMenuForm(
                title: "찜한 스토어",
                icons: Icons.favorite_border,
                marginBottom: 16,
                onCustomButton: () {
                },
              ),
              MyPageMenuForm(
                title: "설정",
                icons: Icons.settings,
                marginBottom: 16,
                onCustomButton: () {},
              ),
              MyPageMenuForm(
                title: "로그아웃",
                icons: Icons.power_settings_new,
                marginBottom: 32,
                onCustomButton: () {},
              ),
              Container(
                width: _size.width * 0.9,
                height: 72,
                margin: EdgeInsets.only(left: _size.width * 0.05),
                color: Color(0xff26c1f0),
                child: Text("배너 영역"),
              )
            ])),
      ),
    );
  }
}
