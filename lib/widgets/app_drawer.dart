import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeader(context),
          buildBody(context),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    const user = 'Eldar Ulanov';
    // const avatar = 'assets/images/eldar.jpg';

    const userAvatar = CircleAvatar(
      radius: 52,
      backgroundImage: AssetImage('assets/images/eldar.jpg'),
    );

    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Column(
        children: const [
          userAvatar,
          SizedBox(
            height: 12,
          ),
          Text(
            user,
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    final List<String> choices = [
      'Recommended',
      'Entertainment',
      'Food',
      'Cultural & Historical',
      'Outdoor Activities',
      'Trips',
      'Get Drunk'
    ];
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...choices.map((str) => TextButton(
                onPressed: null,
                child: Text(str),
              )),
          OutlinedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopUpDialog(context),
              );
            },
            child: Text('Preferences'),
          )
        ],
      ),
    );
  }

  Widget _buildPopUpDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Change your Preferences'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text("Hello"),
          ),
        ],
      ),
      actions: <Widget>[
        Align(
            alignment: Alignment.center,
            child: OutlinedButton(
              onPressed: null,
              child: Text('Let\'s Go!'),
            ))
      ],
    );
  }
}
