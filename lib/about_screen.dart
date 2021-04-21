import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutScreenState();
  }
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("About App"),
      ),

          body: Container(
            child: Stack(
              children: <Widget>
              [Positioned(
                top: -40,
                left: 50,
                height: 300,
                width: 300,
                  child: Image(
                    image: AssetImage('images/missing-person.jpg'),
                    ),
                  ),
                Positioned(
                  top: 240,
                  left: 50,
                  height: 300,
                  width: 300,
                  child: Text(
                   'The main problem is that many people go missing or lost for unknown reasons in various Lebanese districts.This apps role is to spread information about the missing people through connections between seekers and trackers which raises the probability of finding the missing person.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,

                    ),
                  ),
                ),

                Positioned(
                  top: 515,
                  left: 5,
                  height: 100,
                  width: 200,
                  child: Text(
                    'The Team: ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                ),
                Positioned(
                  top: 550,
                  left: 5,
                  height: 100,
                  width: 90,
                  child: Image(
                    image: AssetImage('images/Ahmad-Ghandour.jpg'),
                  ),
                ),
                Positioned(
                  top: 649,
                  left: 30,
                  height: 100,
                  width: 100,
                  child: Text(
                    'Ahmad Ghandour',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  top: 550,
                  left: 100,
                  height: 100,
                  width: 90,
                  child: Image(
                    image: AssetImage('images/Jana-El-Kari.jpg'),
                  ),
                ),
                Positioned(
                  top: 645,
                  left: 130,
                  height: 100,
                  width: 100,
                  child: Text(
                    'Jana \nEl-Kari',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  top: 550,
                  left: 200,
                  height: 100,
                  width: 90,
                  child: Image(
                    image: AssetImage('images/Jana-Ibrahim-El-Husseini.jpg'),
                  ),
                ),
                Positioned(
                  top: 645,
                  left: 210,
                  height: 100,
                  width: 100,
                  child: Text(
                    'Jana Ibrahim \nEl Husseini',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  top: 550,
                  left: 300,
                  height: 100,
                  width: 90,
                  child: Image(
                    image: AssetImage('images/Jana-Kanafani.jpg'),
                  ),
                ),
                Positioned(
                  top: 645,
                  left: 330,
                  height: 100,
                  width: 100,
                  child: Text(
                    'Jana \nKanafani',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                ]),


      ),
    );
  }
}
