import 'package:flutter/material.dart';

class CompanyDisplayForm extends StatefulWidget {
  final String imgUrl;
  final String companyName;
  const CompanyDisplayForm({Key key, this.imgUrl, this.companyName})
      : super(key: key);

  @override
  _CompanyDisplayFormState createState() => _CompanyDisplayFormState();
}

class _CompanyDisplayFormState extends State<CompanyDisplayForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      width: _width * 0.9,
      decoration: BoxDecoration(
          color: Color(0xfff2f3f8),
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 24,
                  height: 24,
                  margin: const EdgeInsets.only(left: 8, right: 2),
                  child: Image.network(widget.imgUrl),
                ),
                Text(
                  widget.companyName,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff202426)),
                )
              ]),
          IconButton(
              icon: Icon(Icons.arrow_forward_ios,
                  size: 24, color: Color(0xff050407)),
              onPressed: () {})
        ],
      ),
    );
  }
}
