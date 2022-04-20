// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TITLE SECTION
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    // BUTTON SECTION
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    // PHOTO GRID
    //Widget photoSection = _buildPhotoColumn();

    /**  
    Widget photoSection = GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        FlutterLogo(),
        FlutterLogo(),
        FlutterLogo(),
        FlutterLogo(),
      ],
    );
    */
    // MENU OPTIONS
    Widget menuSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          //style: style,
          onPressed: null,
          child: const Text('Add from photo'),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          //style: style,
          onPressed: () {},
          child: const Text('Take photo'),
        ),
      ],
    );
  

    return MaterialApp(
      title: 'CSCI 571 Photo App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Album 571'),
        ),
        body: _buildPhotoColumn(),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          //child: Container(height: 50.0),
          child: menuSection,
          color: Colors.blue,
        ),
      ),
    );
  }

  // PRIVATE HELPER METHODS
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  // private gridview
  GridView _buildPhotoColumn() {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text("He'd have you all unravel at the"),
          color: Colors.teal[100],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Heed not the rabble'),
          color: Colors.teal[200],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    );
  }
}

// Notes
// https://api.flutter.dev/flutter/widgets/GridView-class.html
/**ListView(
          children: [
            Image.asset(
              'images/xiao.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            //menuSection,
          ],
        ),*/