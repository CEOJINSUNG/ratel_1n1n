import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_address_add.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_address_edit.dart';

final addressTextStyle = TextStyle(
    fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff202426));

final addressDetailStyle = TextStyle(fontSize: 16, color: Color(0xff010608));

class MyPageAddress extends StatefulWidget {
  const MyPageAddress({Key key}) : super(key: key);

  @override
  _MyPageAddressState createState() => _MyPageAddressState();
}

class _MyPageAddressState extends State<MyPageAddress> {
  String addressNum = "12345";
  String address = "서울시 성동구 비즈포레";
  String addressDetail =
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor.";

  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          padding: EdgeInsets.all(0),
          icon: Icon(Icons.arrow_back_ios, size: 24, color: Color(0xff050407)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "주소관리",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff010608)),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 24, left: _size.width * 0.05),
                child: Text(
                  "주소리스트",
                  style: addressTextStyle,
                ),
              ),
              Container(
                width: _size.width * 0.9,
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Color.fromRGBO(1, 6, 8, 0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          constraints: new BoxConstraints(
                              minWidth: _size.width * 0.7,
                              maxWidth: _size.width * 0.7),
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Text("$addressNum", style: addressDetailStyle),
                        ),
                        Container(
                          constraints: new BoxConstraints(
                              minWidth: _size.width * 0.7,
                              maxWidth: _size.width * 0.7),
                          margin: const EdgeInsets.only(bottom: 8),
                          child: Text("$address", style: addressDetailStyle),
                        ),
                        Container(
                          constraints: new BoxConstraints(
                              minWidth: _size.width * 0.7,
                              maxWidth: _size.width * 0.7),
                          child:
                              Text("$addressDetail", style: addressDetailStyle),
                        ),
                      ],
                    ),
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        icon: Icon(Icons.arrow_forward_ios,
                            size: 24, color: Color(0xff050407)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyPageAddressEdit()));
                        }),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                child: TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.zero)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyPageAddressAdd()));
                    },
                    child: Text(
                      "새로운 주소 추가하기",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff26c1f0)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
