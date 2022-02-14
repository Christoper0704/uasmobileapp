import 'package:flutter/material.dart';

class PengunjungPage extends StatelessWidget {
  static String tag = 'user-page';
  String username;
  PengunjungPage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userprofile = Hero(
      tag: 'profileuser',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/user.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome $username',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome to HelloApp where you can express yourself here.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[userprofile, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
