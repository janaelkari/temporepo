import 'package:flutter/material.dart';


class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(" Privacy Policy "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
       child: SingleChildScrollView(
         child: Column(
             children: <Widget>[
               Text("Last updated: April 19, 2021",
                 textAlign: TextAlign.left,
                 style: TextStyle(
                   color: Colors.black,
                   fontSize:16,
                 ),
               ),
               Positioned(
                   top: 5,
                   left: 10,
                   height: 100,
                   width: 380,
                   child: Text(
                     'By using Missing People Application, the User irrevocably agrees to the below Terms & Conditions.',
                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                   )
               ),
               SizedBox(height: 20),
               Positioned(
                 top: 100,
                 left: 10,
                 height: 700,
                 width: 370,
                 child: Text(
                   'These terms and conditions ("Agreement") set forth the general terms and conditions of your use of the "Missing People App" mobile application ("Mobile Application" or "Service") and any of its related products and services (collectively, "Services"). This Agreement is legally binding between you ("User", "you" or "your") and this Mobile Application developer ("Operator", "we", "us" or "our"). By accessing and using the Mobile Application and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. If you are entering into this Agreement on behalf of a business or other legal entity, you represent that you have the authority to bind such entity to this Agreement, in which case the terms "User", "you" or "your" shall refer to such entity. If you do not have such authority, or if you do not agree with the terms of this Agreement, you must not accept this Agreement and may not access and use the Mobile Application and Services. You acknowledge that this Agreement is a contract between you and the Operator, even though it is electronic and is not physically signed by you, and it governs your use of the Mobile Application and Services. This terms and conditions policy was created with the help of the terms and conditions generator at https://www.websitepolicies.com/terms-and-conditions-generator',
                   textAlign: TextAlign.left,
                   style: TextStyle(
                     color: Colors.black,
                     fontSize:16,
                   ),
                 ),
               ),
             ],
         ),
       ),
      ),
    );
  }
}
