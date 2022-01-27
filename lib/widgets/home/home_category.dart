import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/component/card_form.dart';
import 'package:ratel_1n1n/widgets/home/component/home_bottom_form.dart';

class HomeCategory extends StatefulWidget {
  final String title;
  const HomeCategory({Key key, this.title}) : super(key: key);

  @override
  _HomeCategoryState createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  List data = [
    {
      "brandImage":
          "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "brandName": "apple",
      "brandLogo":
          "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg"
    },
    {
      "brandImage":
          "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "brandName": "apple",
      "brandLogo":
          "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg"
    },
    {
      "brandImage":
          "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "brandName": "apple",
      "brandLogo":
          "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 24, color: Color(0xff050407)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xff010608)),
        ),
        centerTitle: false,
        elevation: 0,
        titleSpacing: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: _size.height,
                child: GridView.builder(
                  padding: EdgeInsets.only(
                      top: 24,
                      left: _size.width * 0.05,
                      right: _size.width * 0.05),
                  itemCount: data.length,
                  itemBuilder: (context, index) => CardForm(
                    brandImage: data[index]["brandImage"],
                    brandName: data[index]["brandName"],
                    brandLogo: data[index]["brandLogo"],
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 148 / 180,
                    mainAxisSpacing: _size.width * 0.05,
                    crossAxisSpacing: _size.width * 0.05,
                  ),
                ),
              ),
              HomeBottomForm()
            ],
          ),
        ),
      ),
    );
  }
}
