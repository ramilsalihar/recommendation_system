import 'package:flutter/material.dart';

class PlaceOverview extends StatelessWidget {
  const PlaceOverview({Key? key}) : super(key: key);

  static const routeName = '/place-overview';

  @override
  Widget build(BuildContext context) {
    // final palceId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('IT'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://img.jagranjosh.com/images/2022/February/222022/Top-10-most-valuable-companies-in-the-world.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'IT',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "Very long description",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Wrap(
                    spacing: 8.0,
                    children: ["food", "entertainment"]
                        .map(
                          (tag) => Chip(
                        label: Text(tag),
                      ),
                    )
                        .toList(),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Price: ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Location: ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Contacts:',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Phone number: ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Instagram: ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
