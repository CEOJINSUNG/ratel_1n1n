import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/component/company_display_form.dart';
import 'package:ratel_1n1n/widgets/component/product_display_form.dart';
import 'package:ratel_1n1n/widgets/payment/payment_success.dart';

final paymentDetail =
    TextStyle(fontSize: 14, color: Color.fromRGBO(32, 36, 38, 0.6));

final paymentTotal = TextStyle(
    fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff202426));

class PaymentSchedule extends StatefulWidget {
  const PaymentSchedule({Key key}) : super(key: key);

  @override
  _PaymentScheduleState createState() => _PaymentScheduleState();
}

class _PaymentScheduleState extends State<PaymentSchedule> {
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          leading: IconButton(
            icon:
                Icon(Icons.arrow_back_ios, size: 24, color: Color(0xff050407)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "전체 결제하기",
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
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                        top: 24, left: _width * 0.05, bottom: 16),
                    child: Text("상품정보",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff010608))),
                  ),
                  ProductDisplayForm(
                    imgUrl:
                        "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MWP22?wid=1144&hei=1144&fmt=jpeg&qlt=80&.v=1591634795000",
                    date: "2021.4.12",
                    price: 230000,
                    title: "애플 에어팟 프로 1세대…",
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 24),
                    child: CompanyDisplayForm(
                      imgUrl:
                          "https://cdn.codingworldnews.com/news/photo/202104/img_3169_0.jpg",
                      companyName: "Apple",
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 16, bottom: 24),
                      width: _width,
                      height: 1,
                      color: Color(0xffdbdbdb)),
                  Container(
                    width: _width * 0.9,
                    margin: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("전체 결제 금액 : ", style: paymentDetail),
                        Text("+300,000 원", style: paymentDetail)
                      ],
                    ),
                  ),
                  Container(
                    width: _width * 0.9,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("연체료 : ", style: paymentDetail),
                        Text("+ 10,000 원", style: paymentDetail)
                      ],
                    ),
                  ),
                  Container(
                    width: _width * 0.9,
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("총 결제 금액", style: paymentTotal),
                        Text("310,000 원", style: paymentTotal)
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("결제 조건 확인 및 개인정보 제공에 동의합니다.",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(32, 36, 38, 0.6))),
                  )
                ],
              ),
              Container(
                margin:
                    EdgeInsets.only(bottom: _width * 0.1, top: _width * 0.1),
                width: _width * 0.9,
                height: 56,
                decoration: BoxDecoration(
                    color: Color(0xff010608),
                    borderRadius: BorderRadius.all(Radius.circular(6.0))),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentSuccess()));
                  },
                  child: Text("결제하기",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff))),
                ),
              )
            ],
          ),
        )));
  }
}
