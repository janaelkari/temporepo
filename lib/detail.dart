import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appretry/missing.dart';
import 'package:flutter_appretry/missing_notifier.dart';

class MissingDetail extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    Notifier xNotifier = Provider.of<Notifier>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(xNotifier.currentFood.name),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Image.network("https://i.picsum.photos/id/832/200/300.jpg?hmac=6gMt7WeRsS41_901ujRTrOgfwtW9MBZ375g8qXO3LUc"),
          // xNotifier.currentFood.image

              SizedBox(
                height: 32,
              ),
              Text(
                xNotifier.currentFood.name,
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              Text(
                xNotifier.currentFood.age,
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}