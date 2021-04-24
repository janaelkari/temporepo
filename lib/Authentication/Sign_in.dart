import 'package:flutter/material.dart';

import 'auth.dart';
import 'loading.dart';


class SignIN extends StatefulWidget {

  final Function toggleView;
  SignIN({this.toggleView});

  @override
  _SignINState createState() => _SignINState();
}

class _SignINState extends State<SignIN> {

  final AuthService _auth =  AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading =  false;

  //text field state
  String email = "";
  String password = "";
  String error = "";

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() :  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text("Register"),
            onPressed: (){
              widget.toggleView();
            },
          )
        ],
        elevation: 0.0,
        title: Text("Sign In To Missing People "),
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
                child:Form(
                  key: _formkey,
                child: new Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      SizedBox(height:20.0),
                      imagee(),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 20, right: 20,),
                        child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                          prefixIcon: Icon(Icons.person),
                          hintText:  'Email',
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red , width: 2.0)
                            ),
                          ),
                          validator: (val) => val.isEmpty ? 'Enter an email': null,
                          onChanged: (val){
                            setState(()=> email = val);
                          },
                        ),
                      ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 20, right: 20,),
                    child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(30))
                            ),
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red , width: 2.0)
                            ),
                          ),
                          validator: (val) => val.length<6 ? 'Enter The password 6+ chars long': null,
                          obscureText: true,
                          onChanged: (val){
                            setState(()=> password = val);
                            },
                          ),
                  ),
                      SizedBox(height:20),
                      RaisedButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        color: Colors.red[800],
                        child : Text(
                          'SIGN IN',
                          style: TextStyle(color: Colors.white),
                          ),
                        onPressed: () async {
                          if (_formkey.currentState.validate()) {
                              setState(() => loading = true);
                              dynamic result = await _auth.signIN_With_Email_Password(email, password);
                          if (result == null) {
                            setState(() {
                            error = "Could not sign in with those credentials";
                            loading = false;
                          });
                        }
                      }
                    }
                ),

                      SizedBox(height: 20, ),

                      Text('Dont have an account?',
                        style: TextStyle( fontSize: 20.0,
                          color: Colors.red,
                          ),
                        ),

                      FlatButton(
                        child: Text('Create',
                          style: TextStyle( fontSize: 20.0,
                            color: Colors.orangeAccent,
                            ),
                          ),
                          onPressed: (){
                            widget.toggleView();
                            },
                          ),
                      Text(error,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 14.0),
                          ),
                        ],
                      ),
                    )
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
class imagee extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    AssetImage assetImage = AssetImage('images/Logo.jpg');
    Image image = Image(image: assetImage, width: 200, height: 200,);
    return Container(child: image, );
  }
}
