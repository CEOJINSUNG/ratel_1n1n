import 'package:flutter/material.dart';

class ProductDisplayForm extends StatefulWidget {
  final String imgUrl;
  final String title;
  final int price;
  final String date;
  const ProductDisplayForm(
      {Key key, this.imgUrl, this.title, this.price, this.date})
      : super(key: key);

  @override
  _ProductDisplayFormState createState() => _ProductDisplayFormState();
}

class _ProductDisplayFormState extends State<ProductDisplayForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: _width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 72,
            height: 72,
            child: Image.network(widget.imgUrl),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 160,
                margin: const EdgeInsets.only(left: 16),
                child: Text(widget.date + " 결제완료",
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(32, 36, 28, 0.6))),
              ),
              Container(
                width: 160,
                margin: const EdgeInsets.only(left: 16, top: 4, bottom: 4),
                child: Text("${widget.price} 원",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff202426))),
              ),
              Container(
                width: 160,
                margin: const EdgeInsets.only(left: 16),
                child: Text(widget.title,
                    style: TextStyle(fontSize: 14, color: Color(0xff202426))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
