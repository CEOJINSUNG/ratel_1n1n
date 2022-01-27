import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/component/complete_view_form.dart';

class PaymentFail extends StatefulWidget {
  const PaymentFail({ Key key }) : super(key: key);

  @override
  _PaymentFailState createState() => _PaymentFailState();
}

class _PaymentFailState extends State<PaymentFail> {
  @override
  Widget build(BuildContext context) {
    return CompleteViewForm(
      title: "결제에 실패했습니다.",
      reason: "실패사유 : 잔액부족 (401)",
    );
  }
}