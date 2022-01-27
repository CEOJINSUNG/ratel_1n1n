import 'package:flutter/material.dart';

class MyPageMenuForm extends StatefulWidget {
  final IconData icons;
  final String title;
  final double marginBottom;
  final VoidCallback onCustomButton;
  const MyPageMenuForm(
      {Key key, this.icons, this.title, this.marginBottom, this.onCustomButton})
      : super(key: key);

  @override
  _MyPageMenuFormState createState() => _MyPageMenuFormState();
}

class _MyPageMenuFormState extends State<MyPageMenuForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Container(
      width: _size.width * 0.9,
      margin: EdgeInsets.only(
          bottom: widget.marginBottom, left: _size.width * 0.05),
      padding: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Color(0xffdbdbdb)))),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 24,
          width: 24,
          child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Icon(widget.icons, size: 24, color: Color(0xff050406)),
              onPressed: widget.onCustomButton),
        ),
        Container(
            width: 196,
            height: 24,
            margin: const EdgeInsets.only(left: 8),
            child: SizedBox(
              width: 196,
              height: 24,
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft),
                  onPressed: widget.onCustomButton,
                  child: Text(widget.title,
                      style:
                          TextStyle(fontSize: 16, color: Color(0xff202426)))),
            )),
      ]),
    );
  }
}
