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


Widget descriptionSection = Container(
  padding: const EdgeInsets.all(32),
  child: Text(
    'A Universidade Federal do Amazonas (UFAM) é uma instituição de ensino superior pública brasileira localizada no estado do Amazonas e uma das mais importantes do Brasil.'
    'É amplamente considerada como a primeira instituição de ensino superior do país, fundada em 17 de janeiro de 1909.'
    'Originou-se da extinta Escola Universitária Livre de Manáos, desmembrada a Faculdade de Direito, formando o embrião da atual UFAM.'
    'Foi instalada em 15 de março de 1910 e denominada como Universidade de Manaus em 13 de julho de 1913.',
    softWrap: true,
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
            titleSection,
            buttonSection,
            descriptionSection
          ],
        ),
      ),
    );
  }
}
