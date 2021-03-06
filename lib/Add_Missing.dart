import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

class Add_missing extends StatefulWidget {
  @override
  _Add_missingState createState() => _Add_missingState();
}

class _Add_missingState extends State<Add_missing> {
  final _firestore = Firestore.instance;
  var reward = "-";
  String name;
  String adress;
  String phone;
  String age;
  String city;
  String ls;
  File imageFile;
  String Filename;
  String status;

  _openGallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery,maxHeight:500,maxWidth: 500);
    this.setState(() {
      imageFile = picture;
      Filename = basename(imageFile.path);
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera,maxHeight:500,maxWidth: 500);
    this.setState(() {
      imageFile = picture;
      Filename = basename(imageFile.path);
    });
    Navigator.of(context).pop();
  }

////////////////////////////////////////////////////////////////////////////////
  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Upload From :"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                      child: Text("Gallery"),
                      onTap: () {
                        _openGallery(context);
                      }),
                  Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(
                      child: Text("Camera"),
                      onTap: () {
                        _openCamera(context);
                      }),
                ],
              ),
            ),
          );
        });
  }

////////////////////////////////////////////////////////////////////////////////

  Widget _imageView() {
    if (imageFile == null) {
      return Text("No Image Selected!");
    } else {
      return Image.file(imageFile, height: 400, width: 400);
    }
  }

////////////////////////////////////////////////////////////////////////////////
  final _formKey = GlobalKey<FormState>();
  bool _validate = false;
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Add A Missing Person"),
          backgroundColor: Colors.red,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              autovalidate: _validate,
              child: SingleChildScrollView(
                child: new Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new TextFormField(
                      validator: validateName,
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(15)),
                          labelText: "Full Name of missing"
                      ),
                      onChanged: (value) {
                        name = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new TextFormField(
                      validator: validateAge,
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.perm_contact_calendar),

                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(15)),
                          labelText: " Age of missing"),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        age  = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new TextFormField(
                      validator: validateNumber,
                      onChanged: (value) {
                        phone = value;
                      },
                      decoration: new InputDecoration(
                        prefix: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.phone),
                            Text("(+961)")
                          ],
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(15)),
                        labelText: " Phone Number",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new TextFormField(
                      validator: validateCity,
                      onChanged: (value) {
                        city = value;
                      },
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.location_city),

                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(15)),
                          labelText: "City"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new TextFormField(
                      validator: validateAddress,
                      onChanged: (value) {
                        adress = value;
                      },
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.account_balance),

                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(15)),
                          labelText: "Address"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: new TextFormField(
                      validator: validateDescription,
                      onChanged: (value) {
                        ls = value;
                      },
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.textsms),

                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(15)),
                          labelText: "Description",
                          helperText:
                              "Where was the missing person last seen,\nwhat he was wearing,any specific info on the missing..."),
                    ),
                  ),
                  buildCheckbox(),
                  checkValue
                      ? TextFormField(
                    onChanged: (value){
                      reward = value;
                    },
                           validator: validateAmount ,
                          decoration: new InputDecoration(
                              prefixIcon: Icon(Icons.attach_money),

                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(15)),
                              labelText: "Amount",
                              helperText: "Enter amount in LBP"),
                       keyboardType: TextInputType.number,

                  )
                      : SizedBox.shrink(),
                  SizedBox(height: 20.0),
                  _imageView(),
                  RaisedButton(
                    onPressed: () {
                      _showChoiceDialog(context);
                    },
                    child: Text("Upload Image"),
                  ),
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)) ,
                      onPressed: () async{
                          if (_formKey.currentState.validate()) {
                            String url = await uploadImage();
                            _firestore.collection('m').add({
                              'name': name,
                              'adress': adress,
                              'phone': phone,
                              'age': age,
                              'image':url,
                              'city': city,
                              'lastseen': ls,
                              'reward': reward,
                              'status': status,
                            });
                            submitted(context);

                          } else {
                            setState(() {
                              _validate = true;
                            });
                          }
                        },
                        child: Text("Submit",
                         style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            )));
  }

  String validateName(String value) {
    if (value.isEmpty) {

      return "Name is required!.";
    }

    if (value.length < 3) {
      return "Name must be more than two characters!.";
    }

    return null;
  }

  String validateAge(String value) {
    if (value.isEmpty) {
      return "Age is Required!";
    }
    return null;
  }

  String validateCity(String value) {
    if (value.isEmpty) {
      return "City is Required!";
    }
    return null;
  }

  String validateAddress(String value) {
    if (value.isEmpty) {
      return "Address is Required!";
    }

    return null;
  }

  String validateDescription(String value) {
    if (value.isEmpty) {
      return "Description is Required!";
    }
    return null;
  }
  String validateAmount(String value) {
    if (value.isEmpty) {
      return "Amount is Required!";
    }
    return null;
  }

  String validateNumber(String value) {
    if (value.isEmpty) {
      return "Phone Number is Required!";
    }
    if (value.length != 8) {
      return 'Mobile Number must be of 8 digits';
    } else {
      return null;
    }
  }

  Future<String> uploadImage() async {
    StorageReference ref = FirebaseStorage.instance.ref().child(Filename);
    StorageUploadTask uploadTask = ref.putFile(imageFile);
    var downurl = await (await uploadTask.onComplete).ref.getDownloadURL();
    var url = downurl.toString();
    return url;
  }

  Widget buildCheckbox() => CheckboxListTile(
        title: Text("Choose to add a reward"),
        //secondary: Icon(Icons.attach_money),
        value: checkValue,
        onChanged: (value) {
          setState(() {
            this.checkValue = value;
          });
        },
      );

  void submitted(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: (){
        Navigator.popUntil(context, ModalRoute.withName('/'));

      },
    );
    var alertDialog =  AlertDialog(
      title: Text("Your post has been added successfully"),
      content: Text("Refresh the list to check your post") ,

      actions: [
        okButton,
      ],
    );

    showDialog(context: context,
        builder: (BuildContext context){
          return alertDialog;
        }
    );
  }
}
