import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/flight_schedule.dart';
import 'pages/ticket_purchase.dart';
import 'pages/chatbot.dart';
import 'pages/subscription.dart';
import 'pages/analytics.dart';
import 'pages/refund.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
      ),
      home: MyHomePage(title: 'SkyPay'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static  final List<Widget> _widgetOptions = <Widget>[
    FlightSearchForm(),
    TicketPurchasePage(),
    ChatBotPage(),
    SubscriptionPage(),
    AnalyticsPage(),
    RefundPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          color: Colors.grey[200],
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey[500],
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Uçuş Takvimi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Bilet Satın Alma',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chatbot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              label: 'Abonelik',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Analitik',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: 'İade',
            ),
          ],
        ),
      ),
    );
  }
}
