
import 'package:dashboard/visa/visit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class help extends StatefulWidget {
  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Visa Type"),backgroundColor: Colors.blue[900],),
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 20,bottom: 20),
                  height: 230,
                  width: 350,
                  child: Column(

                    children: [
                      Image.asset("assets/country/study.jpg"),
                      Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Study Visa",style: TextStyle(color: Colors.blue[900],fontSize: 30.0,fontWeight: FontWeight.bold),))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
                  Route route=MaterialPageRoute(builder: (context)=>StudyVisa());
                  Navigator.push(context, route);
                },
              ),
              SizedBox(height: 10,),
              Container(
                height: 5,
                width: 200,
                color: Colors.blue[900],
              ),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              Container(
                height: 5,
                width: 150,
                color: Colors.blue[900],
              ),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              Container(
                height: 5,
                width: 200,
                color: Colors.blue[900],
              ),
              SizedBox(height: 10,),
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 260,
                  width: 350,
                  child: Column(

                    children: [
                      Image.asset("assets/country/travel.jpg"),
                      Padding(padding:EdgeInsets.only(top: 5.0),child: Text("Tourist Visa",style: TextStyle(color: Colors.blue[900],fontSize: 30.0,fontWeight: FontWeight.bold),))
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
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
                  Route route=MaterialPageRoute(builder: (context)=>visitVisa());
                  Navigator.push(context, route);
                },
              ),

            ],
          ),
        ),
      )
    );


  }

}
//Study Visa
class StudyVisa extends StatelessWidget {
  static const std="https://studyabroad.shiksha.com/uk/universities";
  static const std1="https://studyabroad.shiksha.com/usa/universities";
  static const std2="https://studyabroad.shiksha.com/canada/universities";
  static const std3="https://studyabroad.shiksha.com/germany/universities";
  static const std4="https://studyabroad.shiksha.com/sweden/universities";
  static const std5="https://studyabroad.shiksha.com/finland/universities";
  static const std6="https://studyabroad.shiksha.com/denmark/universities";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Study Visa"),backgroundColor:Colors.blue[900],),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Requirements for getting a Student Visa :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
              Container(height: 2,color: Colors.black,),
              Text("1.Valid passport",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("2.Proof of funds",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("3.Proof of acceptance by the respective institution",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("4.Medical examination report",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("5.Student visa interview",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("6.Proficiency in language",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Padding(padding:EdgeInsets.only(top:5,bottom: 5),child: Divider(color: Colors.black,height: 3,)),
              Text("Interview Tips for Student Visa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.blue[900]),),
              Container(height: 2,color: Colors.black,),
              Text("1.Focus",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("2.Clarity of Goals",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("3.Return Ticket",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("4.Keep your family and friends aside",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("5.Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("6.Listen before you respond",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("7.Language",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("8. Strengths",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Text("9.Paper-Work Ready",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
              Padding(padding:EdgeInsets.only(top:5,bottom: 5),child: Divider(color: Colors.black,height: 3,)),
              Text(" Browse universities abroad",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.blue[900]),),
              Container(height: 2,color: Colors.black,),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 30,
                    width: 300,
                    color: Colors.blue[900],
                    child: Text("Universities in UK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white)),
                  ),
                ),
                onTap: (){
                  launch(std);
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 30,
                    width: 300,
                    color: Colors.blue[900],
                    child: Text("Universities in USA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white)),
                  ),
                ),
                onTap: (){
                  launch(std1);
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.all(5),
                child: Container(
                  height: 30,
                  width: 300,
                  color: Colors.blue[900],
                  child: Text("Universities in CANADA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white)),
                ),
                ),
                onTap: (){
                  launch(std2);
                },
              ),

              InkWell(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 30,
                    width: 300,
                    color: Colors.blue[900],
                    child: Text("Universities in GERMANY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white)),
                  ),
                ),
                onTap: (){
                  launch(std3);
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 30,
                    width: 300,
                    color: Colors.blue[900],
                    child: Text("Universities in SWEDEN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white)),
                  ),
                ),
                onTap: (){
                  launch(std4);
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 30,
                    width: 300,
                    color: Colors.blue[900],
                    child: Text("Universities in FINLAND",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white)),
                  ),
                ),
                onTap: (){
                  launch(std5);
                },
              ),
              InkWell(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 30,
                    width: 300,
                    color: Colors.blue[900],
                    child: Text("Universities in DENMARK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white)),
                  ),
                ),
                onTap: (){
                  launch(std6);
                },
              )


            ],
          ),
        ),
      )

    );
  }
}
class Uk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Study in UK"),),
      body: Column(
        children: [
          Text("Required Documents"),

        ],
      ),
    );
  }
}

