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

          body: Stack(
              fit: StackFit.expand,

              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.white)
                  ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Expanded(
                  child: SingleChildScrollView(
                    child: new Container(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/missing-person.jpg'),
                              ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),

                            child: Text(
                                'The main problem is that many people go missing or lost for unknown reasons in various Lebanese districts.This apps role is to spread information about the missing people through connections between seekers and trackers which raises the probability of finding the missing person.',

                              textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,

                                ),
                              ),

                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 140.0),
                            ),
                            Text(
                                'The Team: ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  backgroundColor: Colors.red,
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 2.0,
                                  letterSpacing: 1.0,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
                            Image.asset('images/Ahmad-Ghandour.jpg', width: 90, height: 95,),

                              Text(
                                'Ahmad \nGhandour',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
                              Image.asset('images/Jana-El-Kari.jpg', width: 90, height: 100,),

                              Text(
                                'Jana \nEl-Kari',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
                            Image.asset('images/Jana-Ibrahim-El-Husseini.jpg', width: 90, height: 100,),
                            Text(
                                'Jana Ibrahim \nEl Husseini',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
                            Image.asset('images/Jana-Kanafani.jpg', width: 90, height: 100,),
                              Text(
                                'Jana \nKanafani',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0),
                            ),
    ],
                                ),
                              ),

                            ),
                              ),
                          ],
           ),
    ],
    ),
    );
  }
}
