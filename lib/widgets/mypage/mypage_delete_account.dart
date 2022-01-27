import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/component/complete_view_form.dart';

class MyPageDeleteAccount extends StatefulWidget {
  const MyPageDeleteAccount({ Key key }) : super(key: key);

  @override
  _MyPageDeleteAccountState createState() => _MyPageDeleteAccountState();
}

class _MyPageDeleteAccountState extends State<MyPageDeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return CompleteViewForm(
      title: "다음에 다시 만나요~",
      reason: "",
    );
  }
}