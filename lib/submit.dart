import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dashboard/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Submit extends StatefulWidget {
  @override
  _SubmitState createState() => _SubmitState();
}
String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp = new RegExp(p);
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _SubmitState extends State<Submit> {
  TextEditingController name= new TextEditingController();
  TextEditingController email= new TextEditingController();
  TextEditingController phone= new TextEditingController();
  TextEditingController question= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Help"),backgroundColor: Colors.blue[900],),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
            ),
            SizedBox(height: 10,),
            Container(
              height: 500,
              child:Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: name,
                          validator: (value){
                            if(value.length<6){
                              return "Full Name Please";
                            }
                            else if(value==""){
                              return "Please Enter Your Name";
                            }
                            return "";
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter a name"
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: email,
                          validator:(value){
                            if(value==""){
                              return "Please Fill Email";
                            }else if(!regExp.hasMatch(value)) {
                              return "Email is Invalid";
                            }
                            return "";
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter a Email"
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: phone,
                          validator:(value){
                            if(value==""){
                              return "Please Fill Phone Number";
                            }
                            else if(value.length<11){
                              return "Phone Number Must Be 11";
                            }
                            return "";
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter a Phone Number"
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: question,
                          validator: (value){
                            if(value.length<6){
                              return "Full Name Please";
                            }
                            else if(value==""){
                              return "Please Enter Your Name";
                            }
                            return "";
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter a Question"
                          ),
                        ),
                        RaisedButton(
                          onPressed: (){
                            if(_formKey.currentState.validate()){

                                Map<String,dynamic> data={"name":name.text,"Email":email.text,"Phone":phone.text,"Question":question.text};
                                Firestore.instance.collection("ASK").add(data);

                                Navigator.push(context,
                                MaterialPageRoute(builder: (_) => dashboard()));
                            }},
                          child: Text("Submit"),
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}



