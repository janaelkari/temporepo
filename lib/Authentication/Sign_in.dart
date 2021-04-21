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
      body: Container(

          padding: EdgeInsets.symmetric(vertical: 20.0 ,horizontal: 50.0),
          child:Form(
            key: _formkey,
            child: Column(
              children:<Widget>[
                SizedBox(height:20.0),
                imagee(),
                SizedBox(height:20.0),
                TextFormField(
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
                SizedBox(height:20.0),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(30))
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
                Expanded(
                  child:SizedBox(height:5.0),
                  ),
                Expanded(
                  child:RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    color: Colors.red[800],
                    child : Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      if (_formkey.currentState.validate()) {
                        setState(() => loading = true);
                        dynamic result = await _auth.signIN_With_Email_Password(
                            email, password);
                        if (result == null) {
                          setState(() {
                            error = "Could not sign in with those credentials";
                            loading = false;
                          });
                        }
                      }
                    }
                ),
                ),
                Expanded(
                  child: SizedBox(height: 5.0,
                  ),
                ),
                Expanded(
                  child:Text('Dont have an account?',
                  style: TextStyle( fontSize: 20.0,
                    color: Colors.red,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                  child: Text('Create',
                    style: TextStyle( fontSize: 20.0,
                      color: Colors.orangeAccent,
                    ),

                  ),
                  onPressed: (){
                    widget.toggleView();
                  },
                ),
                ),
                Expanded(
                  child:Text(error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                ),
              ],
            ),
          )
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
