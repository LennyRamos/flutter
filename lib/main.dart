import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      home: MyHomePage(title: 'Business Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQHEs0GQRvIzlg/profile-displayphoto-shrink_200_200/0?e=1590624000&v=beta&t=J46SHMA4K77GTWiorR7ZX0fELzQrlumL6nrEOeOXW5s'),
            ),
          ),
          Text(
            'Lenny Ramos',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'PressStart2P'),
          ),
          Text(
            'SOFTWARE ENGINEER',
            style: TextStyle(
              letterSpacing: 2.0,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            thickness: 3,
            indent: 100.0,
            endIndent: 100.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('+1 765 342 5098'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 30),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('LetsBeFriends@gmail.com'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
