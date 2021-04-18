import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appretry/missing.dart';
import 'package:flutter_appretry/MissingList.dart';
import 'package:flutter_appretry/missing_notifier.dart';

class MissingDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Notifier xNotifier = Provider.of<Notifier>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(xNotifier.currentFood.name),
      ),
      body: Center(
        child: Container(
          child: Column(

            children: <Widget>[

              Padding(

                padding: const EdgeInsets.all(20.0),
                child: Image.network(xNotifier.currentFood.image != null
                    ? xNotifier.currentFood.image
                    : "https://i.picsum.photos/id/832/200/300.jpg?hmac=6gMt7WeRsS41_901ujRTrOgfwtW9MBZ375g8qXO3LUc",
                  width: 400,
                  height: 400,

                ),
              ),

              // xNotifier.currentFood.image

              SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person,color: Colors.red,
                      ) ,
                      title:Text( "Name"),
                    subtitle: Text( xNotifier.currentFood.name),
                      ),
                    ListTile(
                      leading: Icon(Icons.perm_contact_calendar,color: Colors.red,
                      ) ,
                      title:Text( "Age"),
                      subtitle: Text( xNotifier.currentFood.age),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone,color: Colors.red,
                      ) ,
                      title:Text( "Phone Number"),
                      subtitle: Text( xNotifier.currentFood.phone),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_city,color: Colors.red,
                      ) ,
                      title:Text( "City"),
                     // subtitle: Text( xNotifier.currentFood.city),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on_rounded,color: Colors.red,
                      ) ,
                      title:Text( "Address"),
                      subtitle: Text( xNotifier.currentFood.adress),
                    ),

                    ListTile(
                      leading: Icon(Icons.textsms,color: Colors.red,
                      ) ,
                      title:Text( "Description"),
                      subtitle: Text( xNotifier.currentFood.lastseen),
                    ),
                    ListTile(
                      leading: Icon(Icons.attach_money,color: Colors.red,
                      ) ,
                      title:Text( "Reward"),
                    //  subtitle: Text( xNotifier.currentFood.lastseen),
                    ),
                  ],
                ),
              ),


            ],

          ),
        ),
      ),
    );
  }
}