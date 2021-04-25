import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appretry/missing.dart';
import 'package:provider/provider.dart';

import 'detail.dart';
import 'missing_notifier.dart';

class MissingList extends StatefulWidget {
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<MissingList> {
  @override
  void initState() {
    Notifier xNotifier = Provider.of<Notifier>(context, listen: false);
    getpeople(xNotifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Notifier xNotifier = Provider.of<Notifier>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('LIST'),
        ),
        body: RefreshIndicator(
          onRefresh: () {
            return getpeople(xNotifier);
          },
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.network(
                  xNotifier.missingList[index].image != null
                      ? xNotifier.missingList[index].image
                      : "https://i.picsum.photos/id/832/200/300.jpg?hmac=6gMt7WeRsS41_901ujRTrOgfwtW9MBZ375g8qXO3LUc",
                  height: 60,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                title: Text(xNotifier.missingList[index].name),
                subtitle: Text(xNotifier.missingList[index].city),
                onTap: () {
                  xNotifier.currentmissing = xNotifier.missingList[index];
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return MissingDetail();
                  }));
                },
              );
            },
            itemCount: xNotifier.missingList.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: Colors.black,
                thickness: 1,
              );
            },
          ),
        ));
  }
}

Future<void> getpeople(Notifier xNotifier) async {
  //await is like future, since firestore is in the cloud so its as if we are getting the data from the internet, we have to wait
  QuerySnapshot snapshot =
      await Firestore.instance.collection('m').getDocuments();

  List<missing> _pList = [];

  snapshot.documents.forEach((document) {
    //traverse the document

    missing p = missing.fromMap(document
        .data,docId: document.documentID); //doc.data is a map //transformed this doc to the missing class obj
    //data is the json file (fields of the doc)
    _pList.add(p);
  });

  xNotifier.missingList = _pList;
  return;
}
