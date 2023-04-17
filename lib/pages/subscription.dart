import 'package:flutter/material.dart';

class SubscriptionOption {
  final String title;
  final String description;
  final String price;

  SubscriptionOption({required this.title, required this.description, required this.price});
}

class SubscriptionPage extends StatefulWidget {
  @override
  _SubscriptionPageState createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  int _selectedOptionIndex = -1;

  List<SubscriptionOption> _options = [
    SubscriptionOption(title: 'Temel', description: 'Lorem ipsum dolor sit amet', price: '₺29.99/ay'),
    SubscriptionOption(title: 'Standart', description: 'Consectetur adipiscing elit', price: '₺59.99/ay'),
    SubscriptionOption(title: 'Premium', description: 'Sed do eiusmod tempor incididunt', price: '₺89.99/ay'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Size en uygun planı seçin',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _options.length,
                itemBuilder: (BuildContext context, int index) {
                  SubscriptionOption option = _options[index];
                  bool isSelected = index == _selectedOptionIndex;
                  return Card(
                    color: isSelected ? Colors.blue[50] : null,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedOptionIndex = index;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              option.title,
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              option.description,
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.grey[600]),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              option.price,
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: _selectedOptionIndex == -1 ? null : () {
                  // seçilen abonelik seçeneğini satın al
                },
                child: Text('Şimdi Satın Al'),
              ),
            ),
          ],
        ),
      ),
    );
  }}