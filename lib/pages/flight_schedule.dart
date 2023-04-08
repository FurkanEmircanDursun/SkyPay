import 'package:flutter/material.dart';

class FlightSchedulePage extends StatefulWidget {
  @override
  _FlightSchedulePageState createState() => _FlightSchedulePageState();
}

class _FlightSchedulePageState extends State<FlightSchedulePage> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _passengersController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cardExpController = TextEditingController();

  String? _fromValue;
  String? _toValue;

  final List<String> _cities = [
    'Istanbul',
    'Paris',
    'New York',
    'London',
    'Moscow',
    'Dubai',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Uçak Bileti Satın Al'),
    ),
    body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    children: [
    DropdownButtonFormField<String>(
    value: _fromValue,
    decoration: InputDecoration(
    labelText: 'Nereden',
    labelStyle: TextStyle(color: Colors.black54),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
    ),
    items: _cities.map((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(
    value,
    style: TextStyle(color: Colors.black),
    ),
    );
    }).toList(),
    onChanged: (String? newValue) {
    setState(() {
    _fromValue = newValue!;
    });
    },
    ),
    SizedBox(height: 16.0),
    DropdownButtonFormField<String>(
    value: _toValue,
    decoration: InputDecoration(
    labelText: 'Nereye',
    labelStyle: TextStyle(color: Colors.black54),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
    ),
    items: _cities.map((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(
    value,
    style: TextStyle(color: Colors.black),
    ),
    );
    }).toList(),
    onChanged: (String? newValue) {
    setState(() {
    _toValue = newValue!;
    });
    },
    ),
    SizedBox(height: 16.0),
    TextFormField(
    controller: _dateController,
    decoration: InputDecoration(
    labelText: 'Tarih',
    labelStyle: TextStyle(color: Colors.black54),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
    ),
    ),
    SizedBox(height: 16.0),
    TextFormField(
    controller: _passengersController,
    decoration: InputDecoration(
    labelText: 'Yolcu Sayısı',
    labelStyle: TextStyle(color: Colors.black54),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
    ),
    ),
    SizedBox(height: 16.0),
    TextFormField(
    controller: _cardNumberController,
    decoration: InputDecoration(
    labelText: 'Kredi Kartı Numarası',
    labelStyle: TextStyle(color: Colors.black54),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
    ),
    ),
    SizedBox(height: 16.0),
    TextFormField(
    controller: _cardExpController,
    decoration: InputDecoration(
    labelText: 'Kredi Kartı Son Kullanma Tarihi',
    labelStyle: TextStyle(color: Colors.black54),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
    ),
    ),
    SizedBox(height: 32.0),
    ElevatedButton(
    onPressed: (){}
      ,
          child: Text('Uçuşları Göster'),
  ),
  ],
  ),
  ),
  );
}
}