import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  @override
  _contactState createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("Contact"),backgroundColor: Colors.blue[900],),
        body:Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.phone,color: Colors.white,),
                    title: Text("+880 1610662715",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone,color: Colors.white,),
                    title: Text("+880 1797322268",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                  ),
                  ListTile(
                    leading: Icon(Icons.mail,color: Colors.white,),
                    title: Text("ask.bd@gmail.com",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}
