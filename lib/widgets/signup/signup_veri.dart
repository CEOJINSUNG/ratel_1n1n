import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/signup/component/signup_veri_form.dart';
import 'package:ratel_1n1n/widgets/signup/signup_account.dart';

class SignupVeriView extends StatefulWidget {
  SignupVeriView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SignupVeriViewState createState() => _SignupVeriViewState();
}

class _SignupVeriViewState extends State<SignupVeriView> {
  bool _entire = false;
  bool _individual = false;
  bool _service = false;
  bool _smartphone = false;
  bool _marketing = false;
  void entireCheck() {
    setState(() {
      if (_entire) {
        _entire = false;
      } else {
        _entire = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    dynamic _size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios,
                  color: const Color(0xff070306), size: 24),
              onPressed: () => Navigator.of(context).pop()),
          elevation: 0,
          titleSpacing: 0,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 24, left: _size * 0.05),
                    child: Text(
                      "원활한 서비스 이용을 위해 \n본인인증을 완료해주세요.",
                      style: TextStyle(
                          color: Color(0xff010608),
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  margin:
                      EdgeInsets.only(top: 32, left: _size * 0.05, bottom: 16),
                  padding:
                      EdgeInsets.only(top: 12, bottom: 12, left: 8, right: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffcccdcd)),
                      borderRadius: BorderRadius.all(Radius.circular(6.0))),
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                            width: 24,
                            height: 24,
                            child: new IconButton(
                                padding: const EdgeInsets.all(0),
                                color: _entire
                                    ? Color(0xff26c1f0)
                                    : Color(0xff66696a),
                                icon: Icon(
                                  Icons.check_outlined,
                                  size: 24,
                                ),
                                onPressed: entireCheck)),
                        Container(
                            margin: const EdgeInsets.only(left: 8),
                            child: Text(
                              "전체 약관 동의",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff010608),
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
                SignupVeriForm(
                    entire: _entire,
                    individual: _individual,
                    text: "개인정보 처리약관 동의 (필수)"),
                SignupVeriForm(
                    entire: _entire,
                    individual: _service,
                    text: "1/n 서비스 이용약관 동의 (필수)"),
                SignupVeriForm(
                    entire: _entire,
                    individual: _smartphone,
                    text: "휴대폰 본인확인 서비스 동의 ( 필수)"),
                SignupVeriForm(
                    entire: _entire,
                    individual: _marketing,
                    text: "마케팅 정보 수신 동의(선택)"),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: _size * 0.05, bottom: 32, top: 32),
              child: SizedBox(
                width: _size * 0.9,
                height: 56,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupAccount()));
                  },
                  child: Text("본인인증하기",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                      )),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff010608)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0)))),
                ),
              ),
            )
          ],
        ))));
  }
}
