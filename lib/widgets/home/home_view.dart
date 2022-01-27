import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/component/card_form.dart';
import 'package:ratel_1n1n/widgets/home/component/home_bottom_form.dart';
import 'package:ratel_1n1n/widgets/home/component/home_category_form.dart';
import 'package:ratel_1n1n/widgets/home/home_category.dart';
import 'package:ratel_1n1n/widgets/home/home_search.dart';

final homeTitleText = TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff202426));

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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

  List category = [
    {
      "img": "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "title": "패션",
    },
    {
      "img": "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "title": "패션",
    },
    {
      "img": "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "title": "패션",
    },
    {
      "img": "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "title": "패션",
    },
    {
      "img": "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "title": "패션",
    },
    {
      "img": "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "title": "패션",
    },
    {
      "img": "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "title": "패션",
    },
    {
      "img": "https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg",
      "title": "패션",
    },
  ];

  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        actions: [
          IconButton(
            splashColor: Colors.transparent,
            icon: Icon(Icons.notifications_none_outlined,
                size: 24, color: Color(0xff000000)),
            onPressed: () {},
          )
        ],
        title: Container(
          width: 32,
          height: 32,
          color: Colors.black,
        ),
        elevation: 0,
        titleSpacing: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: _size.width,
                height: 280,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.only(
                    left: _size.width * 0.05, top: 24, bottom: 24),
                padding:
                    EdgeInsets.only(top: 5, bottom: 5, left: 16, right: 16),
                width: _size.width * 0.9,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Color(0xfff2f3f8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: _size.width * 0.7,
                      child: TextField(
                        decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "찾으시는 쇼핑몰, 상품을 입력하세요.",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(1, 6, 8, 0.4))),
                      ),
                    ),
                    IconButton(
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.centerRight,
                        splashColor: Colors.transparent,
                        icon: Icon(Icons.search,
                            size: 24, color: Color(0xff010608)),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).push(
                              MaterialPageRoute(
                                  builder: (context) => HomeSearch()));
                        })
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: _size.width * 0.05, bottom: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "신규 입점 브랜드 😎",
                      style: homeTitleText,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      width: 24,
                      height: 24,
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        splashColor: Colors.transparent,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xff202426),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: _size.width * 0.05),
                height: 180,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: CardForm(
                      brandImage: data[index]["brandImage"],
                      brandLogo: data[index]["brandLogo"],
                      brandName: data[index]["brandName"],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: _size.width * 0.05, bottom: 16, top: 24),
                child: Text(
                  "전체 카테고리",
                  style: homeTitleText,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: _size.width * 0.05),
                height: 80,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: HomeCategoryForm(
                      title: category[index]["title"],
                      img: category[index]["img"],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: _size.width * 0.05, bottom: 16, top: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "특가 세일 진행중🦄",
                      style: homeTitleText,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      width: 24,
                      height: 24,
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        splashColor: Colors.transparent,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xff202426),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: _size.width * 0.05),
                width: _size.width * 0.9,
                height: 200,
                color: Colors.blue,
                child: Text("특가 세일"),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: _size.width * 0.05, bottom: 16, top: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "불난다🔥🔥",
                      style: homeTitleText,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      width: 24,
                      height: 24,
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        splashColor: Colors.transparent,
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xff202426),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: _size.width * 0.05),
                height: 180,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: CardForm(
                      brandImage: data[index]["brandImage"],
                      brandLogo: data[index]["brandLogo"],
                      brandName: data[index]["brandName"],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: _size.height * 0.2),
                child: HomeBottomForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
