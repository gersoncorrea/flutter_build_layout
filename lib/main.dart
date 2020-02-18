import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children:[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Universidade Federal do Amazonas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                ),
                Text(
                  'Manaus, Amazonas',
                  style: TextStyle(
                    color: Colors.grey[500]
                  )
                )
              ],
            )
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            Text('5')
        ],
      ),
    );

  
    return MaterialApp(
      title:'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(
              'images/campus.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection
          ],
        ),
      ),
    );
  }
}
