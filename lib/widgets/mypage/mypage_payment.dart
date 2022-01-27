import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/mypage/component/mypage_payment_form.dart';

class MyPagePayment extends StatefulWidget {
  const MyPagePayment({Key key}) : super(key: key);

  @override
  _MyPagePaymentState createState() => _MyPagePaymentState();
}

class _MyPagePaymentState extends State<MyPagePayment> {
  bool _data = true;
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
          "결제수단 관리",
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    top: 24, left: _size.width * 0.05, bottom: _data ? 24 : 16),
                child: Text("결제 계좌 목록",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff202426))),
              ),
              (_data
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        MyPagePaymentForm(
                          account: "우리, 1002-550-568544",
                        ),
                        MyPagePaymentForm(
                          account: "우리, 1002-550-568544",
                        ),
                      ],
                    )
                  : Container(
                      margin:
                          EdgeInsets.only(left: _size.width * 0.05, bottom: 16),
                      child: Text(
                        "아직 추가한 결제수단이 없습니다.",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff010608)),
                      ),
                    )),
              Container(
                margin: EdgeInsets.only(left: _size.width * 0.05),
                width: 150,
                height: 18,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      alignment: Alignment.centerLeft),
                  onPressed: () {},
                  child: Text(
                    "새로운 계좌 추가하기",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff26c1f0)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
