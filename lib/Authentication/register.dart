import 'package:flutter/material.dart';


import 'auth.dart';
import 'loading.dart';


class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth =  AuthService();
  final _formkey = GlobalKey<FormState>();
  bool loading =  false;


  //text field state
  String email = "";
  String password = "";
  String error = "";
  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text("Sign In"),
            onPressed: (){
              widget.toggleView();
            },
          )
        ],
        elevation: 0.0,
        title: Text("Sign Up To Missing People "),
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
                    hintText: 'Email',
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
                  obscureText: true,
                  validator: (val) => val.length<6 ? 'Enter The password 6+ chars long': null,
                  onChanged: (val){
                    setState(()=> password = val);
                  },
                ),

                Expanded(
                  child: SizedBox(height:5.0),
                ),
                Expanded(
                  child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.red[800],
                  child : Text(
                    'CREATE ACCOUNT',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if (_formkey.currentState.validate()){
                      setState(() => loading = true);
                      dynamic result =  await _auth.register_With_Email_Password(email, password);
                      if(result == null) {
                        setState((){
                          error = "please supply a valid email";
                          loading = false;
                        });
                      }
                    }
                  },
                ),
                ),
                Expanded(
                  child: SizedBox(height: 20,
                  ),
                ),
                Expanded(
                  child:Text('Already have an account?',
                  style: TextStyle( fontSize: 20.0,
                    color: Colors.red,
                  ),
                ),
                ),
                Expanded(
                  child:FlatButton(
                  child: Text('Sign In',
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
                  child: Text(error,
                  style: TextStyle(color: Colors.red, fontSize: 0)  ,),
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
