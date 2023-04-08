import 'package:flutter/material.dart';
import 'flight_schedule.dart';
import 'ticket_purchase.dart';
import 'chatbot.dart';
import 'subscription.dart';
import 'analytics.dart';
import 'refund.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    FlightSchedulePage(),
    TicketPurchasePage(),
    ChatBotPage(),
    SubscriptionPage(),
    AnalyticsPage(),
    RefundPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SkyPay"),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flight),
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
            icon: Icon(Icons.refresh),
            label: 'İade',
          ),
        ],
      ),
    );
  }
}
