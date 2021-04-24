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
      body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white)
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: new Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                    Padding(
                      padding: EdgeInsets.only(top: 5.0, left: 10, right: 10,),
                      child: Text(
                        'This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0
                        ),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0, left: 10, right: 10,),
                      child: Text(
                        'We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the Privacy Policy Generator.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                        color: Colors.black,
                        fontSize:16,
                            ),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),
                        child: Text(
                          '1-Interpretation and Definitions              ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),
                        child: Text(
                          'a-Interpretation                                              ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 10, right: 10,),
                        child: Text(
                          'The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),
                        child: Text(
                          'b-Definitions                                               ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 10, right: 10,),
                        child: Text(
                          'For the purposes of this Privacy Policy:                            ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Account means a unique account created for You to access our Service or parts of our Service.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Affiliate means an entity that controls, is controlled by or is under common control with a party, where "control" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Application means the software program provided by the Company downloaded by You on any electronic device, named Missing People App',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Company (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Missing People App.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Country refers to: Lebanon                                                                   ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Device means any device that can access the Service such as a computer, a cellphone or a digital tablet.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Personal Data is any information that relates to an identified or identifiable individual.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Service refers to the Application.                                       ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Service Provider means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Third-party Social Media Service refers to any website or any social network website through which a User can log in or create an account to use the Service.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'Usage Data refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
                        child: Text(
                          'You means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),
                        child: Text(
                          '2-Collecting and Using Your Personal       \n    Data',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 37, right: 10,),
                        child: Text(
                          'Types of Data Collected                                  ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 37, right: 10,),
                        child: Text(
                          '1_ Personal Data                                                                                                      ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 55, right: 10,),
                        child: Text(
                          'While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 55, right: 10,),
                        child: Text(
                          '1.1_ Email address                                                                                                                                                                                                                                                ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 55, right: 10,),
                        child: Text(
                          '1.2_ First name and last name                                                                                                                                                ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 55, right: 10,),
                        child: Text(
                          '1.3_ Phone number                                                                                                                                                ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 55, right: 10,),
                        child: Text(
                          '1.4_ Address, State, Province, ZIP/Postal code, City                             ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 37, right: 10,),
                        child: Text(
                          '2_ Usage Data                                                                        ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 55, right: 10,),
                        child: Text(
                          'Usage Data is collected automatically when using the Service.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 55, right: 10,),
                        child: Text(
                          'Usage Data may include information such as Your Devices Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 55, right: 10,),
                        child: Text(
                          'When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 55, right: 10,),
                        child: Text(
                          'We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),
                        child: Text(
                          '3-Information Collected while Using the Application               ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, left: 10, right: 10,),
                        child: Text(
                          'While using Our Application, in order to provide features of Our Application, We may collect, with Your prior permission',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),
                        child: Text(
                          '4-Pictures and other information from your Devices camera and photo library               ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, left: 10, right: 10,),
                        child: Text(
                          'We use this information to provide features of Our Service, to improve and customize Our Service. The information may be uploaded to the Companys servers and/or a Service Providers server or it may be simply stored on Your device.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),
                        child: Text(
                          '5-Use of Your Personal Data               ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, left: 10, right: 10,),
                        child: Text(
                          'The Company may use Personal Data for the following purposes:',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),
                        child: Text(
                          'This document was last updated on April 19, 2021',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10, right: 10,),
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
