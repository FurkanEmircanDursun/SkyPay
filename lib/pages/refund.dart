import 'package:flutter/material.dart';

class RefundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refund Policy'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Refund Policy',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis efficitur malesuada enim euismod maximus. Donec porttitor, sem eu dignissim interdum, purus justo laoreet metus, a facilisis eros mauris vel felis. Nullam ac venenatis nibh, sit amet faucibus est. Proin at ipsum ac ex congue convallis in vel enim. Vestibulum nec tincidunt mauris. Morbi tempor odio a arcu pharetra, at bibendum enim varius. Sed non risus eget lorem auctor viverra.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Cancellation Policy',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vel vestibulum orci, eu euismod velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam venenatis maximus urna sed ultricies. Sed maximus, turpis a laoreet suscipit, orci ex efficitur nibh, a feugiat velit leo vel nunc. Suspendisse eget quam ullamcorper, bibendum dolor in, facilisis libero. Etiam lacinia quam quis ex cursus, eu bibendum purus imperdiet. Fusce volutpat quis metus in varius. Donec facilisis finibus massa id congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
