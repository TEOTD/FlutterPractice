import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Icard());
}

class Icard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/pp.jpeg'),
            ),
            Text(
              'Kiran Hegde',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'Designer/Developer',
              style: TextStyle(
                color: Colors.teal.shade100,
                fontSize: 20,
                fontFamily: 'Source Sans Pro',
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                  size: 25,
                ),
                title: Text(
                  '+91 *********',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      letterSpacing: 1.5),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                  size: 25,
                ),
                title: Text(
                  'kiransrivani@gmail.com',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                      letterSpacing: 1.5),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
