import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/component/company_display_form.dart';
import 'package:ratel_1n1n/widgets/component/product_display_form.dart';
import 'package:ratel_1n1n/widgets/mypage/component/mypage_payment_schedule_form.dart';

class MyPagePaymentSchedule extends StatefulWidget {
  const MyPagePaymentSchedule({Key key}) : super(key: key);

  @override
  _MyPagePaymentScheduleState createState() => _MyPagePaymentScheduleState();
}

class _MyPagePaymentScheduleState extends State<MyPagePaymentSchedule> {
  bool whetherFinish = false;

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
          "상품 상세",
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
                  top: 24, bottom: 16, left: _size.width * 0.05),
              child: Text(
                "상품정보",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff010608)),
              ),
            ),
            ProductDisplayForm(
              imgUrl:
                  "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MWP22?wid=1144&hei=1144&fmt=jpeg&qlt=80&.v=1591634795000",
              date: "2021.4.12",
              price: 230000,
              title: "애플 에어팟 프로 1세대…",
            ),
            Container(
              margin: EdgeInsets.only(top: 24, left: _size.width * 0.05),
              child: CompanyDisplayForm(
                imgUrl:
                    "https://cdn.codingworldnews.com/news/photo/202104/img_3169_0.jpg",
                companyName: "Apple",
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 24, bottom: 16, left: _size.width * 0.05),
              child: Text(
                "결제 스케쥴",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff010608)),
              ),
            ),
            MyPagePaymentScheduleForm(
              num: 1,
              date: "3/29",
              state: 0,
              point: 0,
              paymentPrice: 150000,
              completePrice: 150000,
            ),
            whetherFinish
                ? Container()
                : Container(
                    margin: EdgeInsets.only(left: _size.width * 0.05),
                    child: Text(
                    "7-29일까지 결제를 완료하지 않으면 추심이 진행됩니다. ",
                    style: TextStyle(fontSize: 12, color: Color(0xfff72b2b)),
                  )),
            Container(
                margin: EdgeInsets.only(
                    top: whetherFinish ? 32 : 24, left: _size.width * 0.05),
                width: _size.width * 0.9,
                height: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    color:
                        whetherFinish ? Color(0xffdbdbdb) : Color(0xff26c1f0)),
                alignment: Alignment.center,
                child: SizedBox(
                  width: _size.width * 0.9,
                  height: 56,
                  child: TextButton(
                    child: Text(
                      "전체 결제하기",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff)),
                    ),
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () {},
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
