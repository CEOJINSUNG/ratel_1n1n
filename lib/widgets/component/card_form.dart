import 'package:flutter/material.dart';

class CardForm extends StatefulWidget {
  final String brandImage;
  final String brandName;
  final String brandLogo;
  const CardForm({Key key, this.brandImage, this.brandName, this.brandLogo}) : super(key: key);

  @override
  _CardFormState createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  bool wish = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      height: 180,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
        image: DecorationImage(
            image: NetworkImage("${widget.brandImage}"),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 20,
            height: 20,
            child: IconButton(
                splashColor: Colors.transparent,
                padding: EdgeInsets.zero,
                icon: Icon(wish ? Icons.favorite : Icons.favorite_border,
                    size: 20,
                    color: wish ? Color(0xffff5c5c) : Color(0xffffffff)),
                onPressed: () {
                  setState(() {
                    if (wish) {
                      wish = false;
                    } else {
                      wish = true;
                    }
                  });
                }),
          ),
          FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              constraints: BoxConstraints(minHeight: 40),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "${widget.brandName}",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff202426)),
                  ),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.network("${widget.brandLogo}"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
