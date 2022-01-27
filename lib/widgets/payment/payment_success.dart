import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/component/complete_view_form.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({ Key key }) : super(key: key);

  @override
  _PaymentSuccessState createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return CompleteViewForm(
      title: "결제가 완료되었습니다",
      reason: "",
    );
  }
}