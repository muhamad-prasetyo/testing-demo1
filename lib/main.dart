import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo-APP',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TestApp(),
    );
  }
}

class TestApp extends StatelessWidget {
  final String title = 'Pantai Alam';
  final String location = 'Sumbawa, Indonesia';
  final String description =
      "Pantai Alam atau Pantai Pasir Putih adalah salah satu pantai yang terletak di Provinsi Nusa Tenggatra Tengah, Indonesia. Sekitar 30 km ke arah utara Kota Sumbawa, dengan rimbun pohon pinus serta kelapa dan hamapran lautan di sekitarnya, Pantai Alam Pasir Putih mempunyai ketinggian sekita 3.800 meter diatas permukaan laut.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantai Pasir Putih'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 23,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/img/travel.jpg',
            height: 320.0,
            width: 480.0,
            fit: BoxFit.fill,
          ),
          Container(height: 15.0),
          Row(
            children: <Widget>[
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Container(
                width: 130.0,
              ),
              Icon(
                Icons.star_rate_sharp,
                size: 32,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star_rate_sharp,
                size: 32,
                color: Colors.yellow,
              ),
              Icon(
                Icons.star_rate_sharp,
                size: 32,
                color: Colors.yellow,
              ),
              Text(
                '(4.8)',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18.0,
              ),
              softWrap: true,
            ),
          ),

          // * menambahkan button
          Container(
            width: 50.0,
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text(
                  'Booking Paket.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
