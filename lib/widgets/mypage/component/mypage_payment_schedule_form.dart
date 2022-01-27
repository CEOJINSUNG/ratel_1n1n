import 'package:flutter/material.dart';

final textStyle = TextStyle(
  fontSize: 12,
  color: Color.fromRGBO(32, 36, 38, 0.6),
);

final textUnderStyle = TextStyle(
    fontSize: 12,
    color: Color.fromRGBO(32, 36, 38, 0.6),
    decoration: TextDecoration.underline);

class MyPagePaymentScheduleForm extends StatefulWidget {
  final int num;
  final String date;
  final int paymentPrice;
  final int completePrice;
  final int point;
  // 0 이면 결제 완료, 1 이면 결제 예정, 2 이면 연체
  final int state;
  const MyPagePaymentScheduleForm(
      {Key key,
      this.num,
      this.date,
      this.paymentPrice,
      this.completePrice,
      this.point,
      this.state})
      : super(key: key);

  @override
  _MyPagePaymentScheduleFormState createState() =>
      _MyPagePaymentScheduleFormState();
}

class _MyPagePaymentScheduleFormState extends State<MyPagePaymentScheduleForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.9,
      margin: EdgeInsets.only(bottom: 16, left: _size.width * 0.05),
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color(0xffdbdbdb),
                  width: 1,
                  style: BorderStyle.solid))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("${widget.num}차 분할결제 (${widget.date})",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff202426))),
                Text(
                  widget.state == 0
                      ? "결제 완료"
                      : widget.state == 1
                          ? "결제 예정"
                          : "연체",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: widget.state == 0
                        ? Color(0xff051a1a)
                        : widget.state == 1
                            ? Color(0xff26c1f0)
                            : Color(0xfff72b2b),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("${widget.num}차 분할 결제 금액", style: textStyle),
                Text("+${widget.paymentPrice}", style: textStyle),
              ],
            ),
          ),
          (widget.num == 1
              ? Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("포인트 할인", style: textStyle),
                      Text("- ${widget.point}", style: textStyle),
                    ],
                  ),
                )
              : Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("미결제 금액", style: textUnderStyle),
                          Text("+ ${widget.completePrice}", style: textStyle),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("연체료", style: textUnderStyle),
                          Text("+ ${widget.completePrice}", style: textStyle),
                        ],
                      ),
                    ),
                  ],
                )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("${widget.num}차 총 결제 금액",
                    style: TextStyle(fontSize: 14, color: Color(0xff202426))),
                Text("${widget.paymentPrice} 원",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff051a1a))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}