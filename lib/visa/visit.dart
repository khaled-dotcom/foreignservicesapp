
import 'package:dashboard/documents.dart';
import 'package:dashboard/visa/india.dart';
import 'package:dashboard/visa/nepal.dart';
import 'package:dashboard/visa/singpore.dart';
import 'package:dashboard/visa/thai.dart';
import 'package:dashboard/visa/uk.dart';
import 'package:dashboard/visa/usa.dart';
import 'package:flutter/material.dart';

import '../submit.dart';


class visitVisa extends StatefulWidget {
  @override
  _visitVisaState createState() => _visitVisaState();
}

class _visitVisaState extends State<visitVisa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Visit Visa"),backgroundColor:Colors.blue[900],
        /*actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(child: Text("Help"), value: "/help"),
              PopupMenuItem(
                  child: Text("Documents"), value: "/documents"),
              PopupMenuItem(child: Text("Contact"), value: "/settings"),
            ],
            onSelected: (route) {
              print(route);
              // Note You must create respective pages for navigation
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => Submit()));
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => documents()));

            },
          ),
        ],*/
        /*actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // handle the press
            },
          ),
        ],*/
      ),
      body:ListView(
        children: <Widget>[
          InkWell(
            child: Container(
              padding: EdgeInsets.all(5.0),
              height: 330,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/country/thai.jpg"),
                  Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Visit in Thailand",style: TextStyle(color: Colors.blue[900],fontSize: 30.0,fontWeight: FontWeight.bold),))
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            onTap: (){
              Route route=MaterialPageRoute(builder: (context)=>ThaiVisa());
              Navigator.push(context, route);
            },
          ),
          SizedBox(height: 10.0,),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(5.0),
              height: 330,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/country/india.jpg"),
                  Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Visit in India",style: TextStyle(color: Colors.blue[900],fontSize: 30.0,fontWeight: FontWeight.bold),))
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            onTap: (){
              Route route=MaterialPageRoute(builder: (context)=>indiaVisa());
              Navigator.push(context, route);
            },
          ),
          SizedBox(height: 10.0,),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(5.0),
              height: 380,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/country/nepal.jpg"),
                  Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Visit in Nepal",style: TextStyle(color: Colors.blue[900],fontSize: 30.0,fontWeight: FontWeight.bold),))
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            onTap: (){
              Route route=MaterialPageRoute(builder: (context)=>nepalVisa());
              Navigator.push(context, route);
            },
          ),
          SizedBox(height: 10.0,),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(5.0),
              height: 330,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/country/sing.jpg"),
                  Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Visit in Singapore",style: TextStyle(color: Colors.blue[900],fontSize: 30.0,fontWeight: FontWeight.bold),))
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            onTap: (){
              Route route=MaterialPageRoute(builder: (context)=>singaporeVisa());
              Navigator.push(context, route);
            },
          ),
          SizedBox(height: 10.0,),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(5.0),
              height: 340,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/country/UK.jpg"),
                  Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Visit in UK",style: TextStyle(color: Colors.blue[900],fontSize: 30.0,fontWeight: FontWeight.bold),))
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            onTap: (){
              Route route=MaterialPageRoute(builder: (context)=>ukVisa());
              Navigator.push(context, route);
            },
          ),
          SizedBox(height: 10.0,),
          InkWell(
            child: Container(
              padding: EdgeInsets.all(5.0),
              height: 370,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/country/usa.jpg"),
                  Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Visit in USA",style: TextStyle(color: Colors.blue[900],fontSize: 30.0,fontWeight: FontWeight.bold),))
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            onTap: (){
              Route route=MaterialPageRoute(builder: (context)=>usaVisa());
              Navigator.push(context, route);
            },
          ),
        ],
      )

    );
  }
}
