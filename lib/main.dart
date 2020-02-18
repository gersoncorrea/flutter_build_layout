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

  
  Color color = Theme.of(context).primaryColor;

  Column _buildButtonColumn(Color color, IconData icondata, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icondata, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color
            )
          ),
        )
      ],
    );
  }

Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE')
    ],),  
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
            titleSection,
            buttonSection
          ],
        ),
      ),
    );
  }
}
