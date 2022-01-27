import 'package:flutter/material.dart';
import 'package:ratel_1n1n/widgets/home/home_view.dart';
import 'package:ratel_1n1n/widgets/mypage/mypage_view.dart';
import 'package:ratel_1n1n/widgets/payment/payment_schedule.dart';
import 'package:ratel_1n1n/widgets/payment/payment_success.dart';
import 'package:ratel_1n1n/widgets/payment/payment_view.dart';
import 'package:ratel_1n1n/widgets/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1n1n App',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/home': (context) => MyHomePage(),
        '/payment/main': (context) => PaymentView(),
        '/payment/schedule': (context) => PaymentSchedule(),
        '/payment/success': (context) => PaymentSuccess(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Navigator(key: _navigatorKey, onGenerateRoute: generateRoute)),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black45,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "홈",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined), label: "결제 내역"),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "마이 페이지",
        )
      ],
      onTap: _onTap,
      currentIndex: _currentTabIndex,
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        _navigatorKey.currentState.pushReplacementNamed("홈");
        break;
      case 1:
        _navigatorKey.currentState.pushReplacementNamed("결제 내역");
        break;
      case 2:
        _navigatorKey.currentState.pushReplacementNamed("마이 페이지");
        break;
    }
    setState(() {
      _currentTabIndex = tabIndex;
    });
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "마이 페이지":
        return MaterialPageRoute(
            builder: (context) => MyPageView());
      case "결제 내역":
        return MaterialPageRoute(
            builder: (context) => PaymentView());
      default:
        return MaterialPageRoute(
            builder: (context) => HomeView());
    }
  }
}
