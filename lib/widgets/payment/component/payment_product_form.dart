import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/payment/payment_schedule.dart';

class PaymentProductForm extends StatefulWidget {
  final String imgUrl;
  final String title;
  final int price;
  final String date;
  const PaymentProductForm({ Key key, this.imgUrl, this.title, this.price, this.date }) : super(key: key);

  @override
  _PaymentProductFormState createState() => _PaymentProductFormState();
}

class _PaymentProductFormState extends State<PaymentProductForm> {
  @override
  Widget build(BuildContext context) {
    dynamic _width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: _width * 0.05, right: _width * 0.05),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xff010608), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(6.0))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                child: Text(widget.title, style: TextStyle(fontSize: 14, color: Color(0xff202426))),
              ),
              Container(
                width: 160,
                margin: const EdgeInsets.only(left: 16, top: 4, bottom: 4),
                child: Text("${widget.price} 원", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff202426))),
              ),
              Container(
                width: 160,
                margin: const EdgeInsets.only(left: 16),
                child: Text(widget.date + " 결제예정", style: TextStyle(fontSize: 12, color: Color.fromRGBO(32, 36, 28, 0.6))),
              ),
            ],
          ),
          IconButton(icon: Icon(Icons.arrow_forward_ios, size: 20, color: Color(0xff010608)), onPressed: () {
            Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => PaymentSchedule()));
          })
        ],
      ),
    );
  }
}