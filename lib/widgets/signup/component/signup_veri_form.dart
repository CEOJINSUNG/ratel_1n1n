import 'package:flutter/material.dart';

class SignupVeriForm extends StatefulWidget {
  final bool entire;
  final bool individual;
  final String text;

  const SignupVeriForm({Key key, this.entire, this.individual, this.text}) : super(key: key);

  @override
  _SignupVeriFormState createState() => _SignupVeriFormState();
}

class _SignupVeriFormState extends State<SignupVeriForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: 8, left: _size * 0.05),
      padding: EdgeInsets.only(left: 8, right: 8),
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Row(
          children: <Widget>[
            SizedBox(
                width: 24,
                height: 24,
                child: new IconButton(
                    padding: const EdgeInsets.all(0),
                    color:
                        widget.entire ? Color(0xff26c1f0) : widget.individual ? Color(0xff26c1f0) : Color(0xff66696a),
                    icon: Icon(
                      Icons.check_outlined,
                      size: 24,
                    ),
                    onPressed: () {})),
            Container(
                margin: const EdgeInsets.only(left: 8),
                child: Text(
                  widget.text,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(102, 105, 106, 0.6),
                )))
          ],
        ),
      ),
    );
  }
}
