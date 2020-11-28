import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int profile_level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Profile ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: (){

          setState(() {
            profile_level++;

          });

        },

      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(

                backgroundImage:  AssetImage('assets/omar_profile.jpeg'),
                radius: 40.0,

              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[400],

            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),

            Text(
              'Omar Nasser',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 28.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'CURRENT PERSON LEVEL IS',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),

            Text(
              '$profile_level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 28.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30,),
            Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey[400],

              ),
              SizedBox(
                width: 10.0,
              ),
              Text('omarnaser@Gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),

              ),




            ],

            )
          ],
        ),
      ),
    );
  }
}



