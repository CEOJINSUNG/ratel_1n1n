import 'package:flutter/material.dart';

class HomeCategoryForm extends StatefulWidget {
  final String img;
  final String title;
  const HomeCategoryForm({Key key, this.img, this.title}) : super(key: key);

  @override
  _HomeCategoryFormState createState() => _HomeCategoryFormState();
}

class _HomeCategoryFormState extends State<HomeCategoryForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 56,
            height: 56,
            margin: const EdgeInsets.only(bottom: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(28)),
              image: DecorationImage(
                  image: NetworkImage("${widget.img}"), fit: BoxFit.cover),
            ),
          ),
          Text(
            "${widget.title}",
            style: TextStyle(fontSize: 14, color: Color(0xff202426)),
          )
        ],
      ),
    );
  }
}
