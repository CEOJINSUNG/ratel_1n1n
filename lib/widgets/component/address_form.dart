import 'package:flutter/material.dart';

final textFieldStyle =
    TextStyle(fontSize: 16, color: Color.fromRGBO(1, 6, 8, 1));

class AddressForm extends StatefulWidget {
  const AddressForm({Key key}) : super(key: key);

  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  String addressNum = "";
  String address = "";
  String addressDetail = "";
  String delivery = "";
  int deliveryType = 0;

  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 24, left: _size.width * 0.05),
            child: Text(
              "기본 배송주소로 사용합니다.",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff010608)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: _size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: _size.width * 0.45,
                  height: 56,
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        addressNum = text;
                      });
                    },
                    style: textFieldStyle,
                    decoration: InputDecoration(
                      hintText: "우편번호입력",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide:
                            BorderSide(width: 1, color: Color(0xff26c1f0)),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(1, 6, 8, 0.2))),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 16),
                    width: _size.width * 0.25,
                    height: 48,
                    constraints: BoxConstraints(maxWidth: 120, minWidth: 96),
                    decoration: BoxDecoration(
                        color: Color(0xff051a1a),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    child: TextButton(
                      child: Text(
                        "우편번호찾기",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff)),
                      ),
                      onPressed: () {},
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
            width: _size.width * 0.9,
            height: 56,
            child: TextField(
              onChanged: (text) {
                setState(() {
                  address = text;
                });
              },
              style: textFieldStyle,
              decoration: InputDecoration(
                hintText: "주소",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  borderSide: BorderSide(width: 1, color: Color(0xff26c1f0)),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromRGBO(1, 6, 8, 0.2))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
            width: _size.width * 0.9,
            height: 56,
            child: TextField(
              onChanged: (text) {
                setState(() {
                  addressDetail = text;
                });
              },
              style: textFieldStyle,
              decoration: InputDecoration(
                hintText: "상세 주소 입력",
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  borderSide: BorderSide(width: 1, color: Color(0xff26c1f0)),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    borderSide: BorderSide(
                        width: 1, color: Color.fromRGBO(1, 6, 8, 0.2))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: _size.width * 0.05),
            child: Text(
              "배송 요청사항",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff010608)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.all(0),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      icon: Icon(Icons.check,
                          size: 24,
                          color: deliveryType == 1
                              ? Color(0xff26c1f0)
                              : Color.fromRGBO(1, 6, 8, 0.4)),
                      onPressed: () {
                        setState(() {
                          delivery = "문 앞";
                          deliveryType = 1;
                        });
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    "문 앞",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(1, 6, 8, 0.6)),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.all(0),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      icon: Icon(Icons.check,
                          size: 24,
                          color: deliveryType == 2
                              ? Color(0xff26c1f0)
                              : Color.fromRGBO(1, 6, 8, 0.4)),
                      onPressed: () {
                        setState(() {
                          delivery = "직접 받고 부재시 문앞";
                          deliveryType = 2;
                        });
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    "직접 받고 부재시 문앞",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(1, 6, 8, 0.6)),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.all(0),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      icon: Icon(Icons.check,
                          size: 24,
                          color: deliveryType == 3
                              ? Color(0xff26c1f0)
                              : Color.fromRGBO(1, 6, 8, 0.4)),
                      onPressed: () {
                        setState(() {
                          delivery = "경비실";
                          deliveryType = 3;
                        });
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    "경비실",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(1, 6, 8, 0.6)),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.all(0),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      icon: Icon(Icons.check,
                          size: 24,
                          color: deliveryType == 4
                              ? Color(0xff26c1f0)
                              : Color.fromRGBO(1, 6, 8, 0.4)),
                      onPressed: () {
                        setState(() {
                          delivery = "택배함";
                          deliveryType = 4;
                        });
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    "택배함",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(1, 6, 8, 0.6)),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  padding: const EdgeInsets.all(0),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      icon: Icon(Icons.check,
                          size: 24,
                          color: deliveryType == 5
                              ? Color(0xff26c1f0)
                              : Color.fromRGBO(1, 6, 8, 0.4)),
                      onPressed: () {
                        setState(() {
                          delivery = "";
                          deliveryType = 5;
                        });
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 8),
                  child: Text(
                    "기타",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(1, 6, 8, 0.6)),
                  ),
                )
              ],
            ),
          ),
          (deliveryType == 5
              ? Container(
                  margin: EdgeInsets.only(top: 16, left: _size.width * 0.05),
                  width: _size.width * 0.9,
                  height: 56,
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        delivery = text;
                      });
                    },
                    style: textFieldStyle,
                    decoration: InputDecoration(
                        hintText: "장소 입력 (필수)",
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xff26c1f0)),
                        ),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(1, 6, 8, 0.2)))),
                  ),
                )
              : Container()),
          (deliveryType == 5 && delivery.length == 0
              ? Container(
                  margin: EdgeInsets.only(top: 8, left: _size.width * 0.05),
                  child: Text(
                    "필수 입력 정보입니다.",
                    style: TextStyle(fontSize: 14, color: Color(0xfff72b2b)),
                  ),
                )
              : Container()),
          Container(
            margin: EdgeInsets.only(left: _size.width * 0.05, top: 24),
            width: _size.width * 0.9,
            height: 56,
            decoration: BoxDecoration(
              color: Color(0xff26c1f0),
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
            ),
            child: TextButton(
              child: Text(
                "주소 추가하기",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffffffff)),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    ));
  }
}
