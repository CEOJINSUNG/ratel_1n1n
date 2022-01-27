import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/payment/component/payment_product_form.dart';

final paymentAmount = TextStyle(
    fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffffffff));
final paymentDate = TextStyle(fontSize: 12, color: Color(0xffffffff));

class PaymentView extends StatefulWidget {
  const PaymentView({Key key}) : super(key: key);

  @override
  _PaymentViewState createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  bool paymentOngoing = true;

  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffffffff),
          centerTitle: false,
          titleSpacing: 0.0,
          title: Padding(padding: EdgeInsets.only(left: _size.width * 0.05), child:Text("결제 내역",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff010608)))),
          actions: <Widget>[
            new Padding(
              padding: EdgeInsets.only(right: _size.width * 0.05),
              child: IconButton(
                  icon: Icon(Icons.history, size: 20, color: Color(0xff050407)),
                  onPressed: () {}),
            )
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 24, bottom: 24),
                  padding: EdgeInsets.only(
                      left: _size.width * 0.05, right: _size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("사용한 한도",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff010608))),
                          Container(
                            margin: const EdgeInsets.only(top: 8, bottom: 16),
                            child: Text(paymentOngoing ? "300,000 원" : "0 원",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff010608))),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(right: 4),
                                child: Text("총 한도 : 300,000 원",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(1, 6, 8, 0.6))),
                              ),
                              Icon(Icons.help,
                                  size: 20, color: Color(0xff000000))
                            ],
                          )
                        ],
                      ),
                      Text("게이지 바 넣기")
                    ],
                  ),
                ),
                Container(
                  width: _size.width,
                  margin: const EdgeInsets.only(bottom: 24),
                  padding: EdgeInsets.only(
                      top: 24,
                      bottom: 24,
                      left: _size.width * 0.05,
                      right: _size.width * 0.05),
                  color: paymentOngoing ? Colors.black : Color(0xff26c1f0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(paymentOngoing ? "100,000 원" : "0 원",
                                style: paymentAmount),
                            Container(
                              width: 100,
                              margin: const EdgeInsets.only(top: 8),
                              child: Text("이번달 결제 예정", style: paymentDate),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(paymentOngoing ? "100,000 원" : "0 원",
                                style: paymentAmount),
                            Container(
                              width: 100,
                              margin: const EdgeInsets.only(top: 8),
                              child: Text("다음달 결제 예정", style: paymentDate),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(paymentOngoing ? "100,000 원" : "0 원",
                                style: paymentAmount),
                            Container(
                              width: 100,
                              margin: const EdgeInsets.only(top: 8),
                              child: Text("2달 뒤 결제 예정", style: paymentDate),
                            ),
                          ],
                        ),
                      ]),
                ),
                (paymentOngoing
                    ? Container(
                        margin: EdgeInsets.only(
                            left: _size.width * 0.05, bottom: 16),
                        child: Text("결제 진행중",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff010608))),
                      )
                    : Container()),
                (paymentOngoing
                    ? PaymentProductForm(
                        imgUrl:
                            "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MWP22?wid=1144&hei=1144&fmt=jpeg&qlt=80&.v=1591634795000",
                        title: "애플 에어팟 프로 1세대",
                        price: 100000,
                        date: "2021.7.13")
                    : Align(
                        alignment: Alignment.center,
                        child: Image.asset("images/boy.png"))),
                (paymentOngoing
                    ? Container()
                    : Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: const EdgeInsets.only(top: 16, bottom: 32),
                            child: Text("1/n에 처음 오셨나요?",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff202426)))))),
                (paymentOngoing
                    ? Container()
                    : Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 56,
                            width: _size.width * 0.9,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0))),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "쇼핑하러가기",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffffffff)),
                                )))))
              ]),
        )));
  }
}
