import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:uichallengetest/colorsconstant.dart';
import 'package:uichallengetest/addcalorie.dart';

class Drawerr extends StatefulWidget {
  @override
  _DrawerrState createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        toolbarHeight: 95,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
          child: Row(
            children: [
              Text("Numan Dirican",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      backgroundColor: Appcolor.maincolor,
        elevation: 0,  
        actions: [
          Container(
              child: GestureDetector(
            onTap: () {
              _globalKey.currentState.openEndDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 40, 0),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("Assets/4059.jpg"),
                
              ),
            ),
          ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(color: Appcolor.maincolor),
            padding: EdgeInsets.only(top: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Colors.white),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 1),
                            spreadRadius: 1,
                            blurRadius: 1,
                          ),
                        ]),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            CircularPercentIndicator(
                              progressColor: Appcolor.maincolor,
                              radius: 150,
                              percent: 0.85,
                              animation: true,
                              lineWidth: 7,
                              center: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 55, 0, 0),
                                child: Column(
                                  children: [
                                    Text(
                                      "1895/2100",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                    Text(
                                      "Calorie",
                                      style: TextStyle(
                                          color: Colors.black26,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            buildProgressBar("Protein", "95g", "/296g",
                                Colors.orange, 0.38, 190),
                            SizedBox(
                              height: 25,
                            ),
                            buildProgressBar("carbohydrate", "85g", "/164g",
                                Colors.purple, 0.6, 150),
                            SizedBox(
                              height: 25,
                            ),
                            buildProgressBar(
                                "Fat", "22g", "/82g", Colors.pink, 0.15, 215),
                            SizedBox(
                              height: 25,
                            ),
                            RaisedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddCalories()));
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Add Calorie",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                              color: Appcolor.maincolor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      endDrawer: Drawer(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                child: CircleAvatar(
                    radius: 35,backgroundImage: AssetImage("Assets/4059.jpg"),),
                    
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 5, 0),
                child: Column(
                  
                  children: [
                    Text("John Grimes",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    Text("Your Coach",style: TextStyle(color: Colors.black87,fontSize: 20),),
                  ],
                ),
              ), 
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
            child: Container(
              
              height: 150,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model ."),
              ),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                        border: Border.all(color: Colors.white),
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Text("Yesterday",style: TextStyle(color: Colors.grey, fontSize: 12,),),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
            child: Container(
              
              height: 150,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Many desktop publishing packages",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("and web page editors now use Lorem  Ipsum as their default model ."),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                        border: Border.all(color: Colors.white),
                
              ),
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Appcolor.maincolor,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.description), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("")),
        ],
      ),
    );
  }

  Widget buildProgressBar(
      String besindeger,
      String harcanankalori,
      String sinir,
      Color cizgirenk,
      double indicatorsayi,
      double sizedboxaralik) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              besindeger,
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              width: sizedboxaralik,
            ),
            Text(
              harcanankalori,
              style: TextStyle(color: Colors.black54),
            ),
            Text(
              sinir,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LinearPercentIndicator(
            width: 300,
            lineHeight: 7.0,
            percent: indicatorsayi,
            backgroundColor: Colors.grey,
            progressColor: cizgirenk,
          ),
        ),
      ],
    );
  }
}
