import 'package:flutter/material.dart';

void main() {
  runApp(
      LayoutChallengeApp()
  );
}

class LayoutChallengeApp extends StatelessWidget {
  const LayoutChallengeApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.teal,
      home: MiCardPage(),
    );
  }
}

class MiCardPage extends StatelessWidget {
  const MiCardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 48.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/ic_avatar_pic.png'),

                ),
                Text(
                  'Lawrence C. Cendaña',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Flutter Developer'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 12.0,
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(height: 8.0,),
                ContactColumn(
                  icon: Icons.call,
                  text: '+44 123 4567 8901',
                ),
                ContactColumn(
                  icon: Icons.email,
                  text: 'lawrence.cendana@gmail.com',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactColumn extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactColumn({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0.0),
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: [
          Icon(
            this.icon,
            color: Colors.green,
            size: 18.0,
          ),
          Container(width: 24.0,),
          Text(
            '$text',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
