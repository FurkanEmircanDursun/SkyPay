import 'dart:math';
import 'package:flutter/material.dart';

class AnalyticsPage extends StatelessWidget {
  final Random random = Random();
  final int totalFlights = 25;

  int get totalFlightTime {
    int totalTime = 0;
    for (int i = 0; i < totalFlights; i++) {
      totalTime += random.nextInt(7) + 1;
    }
    return totalTime;
  }

  int get flightsThisMonth {
    int count = 0;
    for (int i = 0; i < totalFlights; i++) {
      DateTime flightDate = DateTime.now().subtract(Duration(days: random.nextInt(30)));
      if (flightDate.month == DateTime.now().month) {
        count++;
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: ListTile(
                  title: Text('Toplam Uçuş Süresi'),
                  trailing: Text('$totalFlightTime saat'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Bu Ay Yapılan Uçuş Sayısı'),
                  trailing: Text('$flightsThisMonth uçuş'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Son Uçuş'),
                  subtitle: Text('${DateTime.now().subtract(Duration(days: random.nextInt(30)))}'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('En Uzun Uçuş'),
                  trailing: Text('${random.nextInt(8) + 1} saat'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}