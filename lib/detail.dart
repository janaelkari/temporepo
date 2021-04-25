import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appretry/missing.dart';
import 'package:flutter_appretry/missing_notifier.dart';
import 'package:url_launcher/url_launcher.dart';

class MissingDetail extends StatefulWidget {
  @override
  _MissingDetailState createState() => _MissingDetailState();
}

class _MissingDetailState extends State<MissingDetail> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String status = 'Missing';
  final _firestore = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    Notifier xNotifier = Provider.of<Notifier>(context, listen: false);
    status = xNotifier.currentFood.status ?? status;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(xNotifier.currentFood.name),
      ),
      body: Container(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: Image.network(
                    xNotifier.currentFood.image != null
                        ? xNotifier.currentFood.image
                        : "https://i.picsum.photos/id/832/200/300.jpg?hmac=6gMt7WeRsS41_901ujRTrOgfwtW9MBZ375g8qXO3LUc",
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // xNotifier.currentFood.image
              Expanded(
                flex: 5,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      title: Text("Name"),
                      subtitle: Text(xNotifier.currentFood.name),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.perm_contact_calendar,
                        color: Colors.red,
                      ),
                      title: Text("Age"),
                      subtitle: Text(xNotifier.currentFood.age),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.red,
                      ),
                      title: Text("Phone Number"),
                      subtitle: Text(xNotifier.currentFood.phone),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_city,
                        color: Colors.red,
                      ),
                      title: Text("City"),
                      subtitle: Text(xNotifier.currentFood.city),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.account_balance,
                        color: Colors.red,
                      ),
                      title: Text("Address"),
                      subtitle: Text(xNotifier.currentFood.adress),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.textsms,
                        color: Colors.red,
                      ),
                      title: Text("Description"),
                      subtitle: Text(xNotifier.currentFood.lastseen),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.attach_money,
                        color: Colors.red,
                      ),
                      title: Text("Reward"),
                      subtitle: Text(xNotifier.currentFood.reward),
                      //  subtitle: Text( xNotifier.currentFood.lastseen),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 10.0),
                      color: Colors.red,
                      child: DropdownButton<String>(
                          style: new TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                          value: status,
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                'Missing',
                              ),
                              value: 'Missing',
                            ),
                            DropdownMenuItem(
                              child: Text(
                                'Found',
                              ),
                              value: 'Found',
                            )
                          ],
                          onChanged: (String value) {
                            status = value;
                            _firestore
                                .collection('m')
                                .document(xNotifier.currentFood.documentId)
                                .updateData({"status": value}).then(
                                    (newResult) {
                              setState(() {
                                xNotifier.currentFood.status= value;
                                status = value;
                              });
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ],

            //   ),
            // ),

            // ],
          ),
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.list_view,
        children: [
          SpeedDialChild(
            child: Icon(Icons.content_copy),
            label: "Copy Mobile Number",
            labelBackgroundColor: Colors.red,
            labelStyle: TextStyle(color: Colors.white, fontSize: 16),
            onTap: () {
              Clipboard.setData(
                  new ClipboardData(text: xNotifier.currentFood.phone));
              _scaffoldKey.currentState.showSnackBar(SnackBar(
                  content: Text("Phone Number is been copied to clipboard")));
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.chat),
            backgroundColor: Colors.green,
            label: "Chat Whatsapp",
            labelBackgroundColor: Colors.green,
            labelStyle: TextStyle(color: Colors.white, fontSize: 16),
            onTap: () async {
              String whatsAppUrl =
                  "whatsapp://send?phone=+961 ${xNotifier.currentFood.phone}";
              print(whatsAppUrl);
              _launchUrl(whatsAppUrl);
            },
          ),
          SpeedDialChild(
              backgroundColor: Colors.blue,
              child: Icon(Icons.phone),
              label: "Call person",
              labelBackgroundColor: Colors.blue,
              labelStyle: TextStyle(color: Colors.white, fontSize: 16),
              onTap: () {
                _launchUrl("tel:${xNotifier.currentFood.phone}");
              }),
        ],
      ),
    );
  }

  String get value => value;

  void _launchUrl(String url) async {
    url = url.replaceAll(" ", "");
    bool can = await canLaunch(url);
    if (can) {
      launch(url);
    }
  }
}
