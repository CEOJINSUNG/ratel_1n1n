import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/mypage/component/mypage_product_display_form.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_payment_schedule.dart';

class MyPagePaymentHistory extends StatefulWidget {
  const MyPagePaymentHistory({Key key}) : super(key: key);

  @override
  _MyPagePaymentHistoryState createState() => _MyPagePaymentHistoryState();
}

class _MyPagePaymentHistoryState extends State<MyPagePaymentHistory> {
  @override
  Widget build(BuildContext context) {
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
          "결제 완료한 상품",
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
          child: Container(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MyPageProductDisplayForm(
                    imgUrl:
                        "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/MWP22?wid=1144&hei=1144&fmt=jpeg&qlt=80&.v=1591634795000",
                    title: "애플 에어팟 프로 1세대",
                    price: 100000,
                    date: "2021.7.13",
                    onCustomButton: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyPagePaymentSchedule()));
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
