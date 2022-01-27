import 'package:flutter/material.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({Key key}) : super(key: key);

  @override
  _HomeSearchState createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
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
          "검색하기",
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
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                    left: _size.width * 0.05, top: 24, bottom: 24),
                padding:
                    EdgeInsets.only(top: 5, bottom: 5, left: 16, right: 16),
                width: _size.width * 0.9,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xfff2f3f8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: _size.width * 0.7,
                      child: TextField(
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "찾으시는 쇼핑몰, 상품을 입력하세요.",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(1, 6, 8, 0.4))),
                      ),
                    ),
                    IconButton(
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.centerRight,
                        splashColor: Colors.transparent,
                        icon: Icon(Icons.search,
                            size: 24, color: Color(0xff010608)),
                        onPressed: () {})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
