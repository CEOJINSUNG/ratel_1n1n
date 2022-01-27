import 'package:flutter/material.dart';

final bottomTitleText = TextStyle(
    fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xff010608));

final bottomExplainText =
    TextStyle(fontSize: 12, color: Color.fromRGBO(1, 6, 8, 0.6));

final bottomLinkText =
    TextStyle(fontSize: 12, color: Color.fromRGBO(1, 6, 8, 0.8));

class HomeBottomForm extends StatefulWidget {
  const HomeBottomForm({Key key}) : super(key: key);

  @override
  _HomeBottomFormState createState() => _HomeBottomFormState();
}

class _HomeBottomFormState extends State<HomeBottomForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width,
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 20, right: 24),
      color: Color(0xfff2f3f8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("고객센터 (카카오톡 채널 상담)", style: bottomTitleText),
                  Container(
                    margin: const EdgeInsets.only(top: 8, bottom: 4),
                    child: Text("운영시간  평일 11:00 ~ 18:00 (토 -일, 공휴일 휴무)",
                        style: bottomExplainText),
                  ),
                  Text("점심시간 평일 12:30 ~ 1:30", style: bottomExplainText)
                ],
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  color: Color(0xfffff500),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 16, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("서비스 이용안내", style: bottomTitleText),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      height: 18,
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.all(0), alignment: Alignment.centerLeft),
                        child: Text(
                          "공지사항",
                          style: bottomLinkText,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      height: 18,
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.all(0), alignment: Alignment.centerLeft),
                        child: Text(
                          "n분의 1 소개",
                          style: bottomLinkText,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      height: 18,
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.all(0), alignment: Alignment.centerLeft),
                        child: Text(
                          "자주 묻는 질문",
                          style: bottomLinkText,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      height: 18,
                      child: TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.all(0), alignment: Alignment.centerLeft),
                        child: Text(
                          "제휴/파트너쉽 문의",
                          style: bottomLinkText,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: _size.width * 0.2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("서비스 정책", style: bottomTitleText),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        height: 18,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.all(0),
                              alignment: Alignment.centerLeft),
                          child: Text(
                            "이용약관",
                            style: bottomLinkText,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        height: 18,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.all(0),
                              alignment: Alignment.centerLeft),
                          child: Text(
                            "개인정보 처리약관",
                            style: bottomLinkText,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        height: 18,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.all(0),
                              alignment: Alignment.centerLeft),
                          child: Text(
                            "마케팅수신 약관",
                            style: bottomLinkText,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        height: 18,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.all(0),
                              alignment: Alignment.centerLeft),
                          child: Text(
                            "분할결제 약관",
                            style: bottomLinkText,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 48,
                height: 48,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                  color: Color(0xfffff500)
                ),
              ),
              Container(
                width: 48,
                height: 48,
                margin: const EdgeInsets.only(right: 16), 
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    color: Color(0xff26c1f0)),
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    color: Color(0xff051a1a)),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 18, bottom: 12),
            child: Text(
              "(주) 라텔",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(1, 6, 8, 0.6)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text("사업자 등록번호 123-12-12345", style: bottomExplainText),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text("대표자 : 김현명, 이지행", style: bottomExplainText),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Text(
              "통신판매업 신고번호 : 제2021-서울종로-2302호",
              style: bottomExplainText,
            ),
          ),
          Container(
            child: Text(
              "주소 : 서울특별시 성동구 왕십리로 10길 1, 1204호",
              style: bottomExplainText,
            ),
          ),
        ],
      ),
    );
  }
}
