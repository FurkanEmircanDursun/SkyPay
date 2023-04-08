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

  List<SubscriptionOption> _options = [    SubscriptionOption(title: 'Basic', description: 'Lorem ipsum dolor sit amet', price: '\$9.99/month'),    SubscriptionOption(title: 'Standard', description: 'Consectetur adipiscing elit', price: '\$19.99/month'),    SubscriptionOption(title: 'Premium', description: 'Sed do eiusmod tempor incididunt', price: '\$29.99/month'),  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose a Subscription'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Choose a plan that works best for you',
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
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            option.description,
                            style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            option.price,
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
                // purchase selected subscription option
              },
              child: Text('Buy Now'),
            ),
          ),
        ],
      ),
    );
  }
}
