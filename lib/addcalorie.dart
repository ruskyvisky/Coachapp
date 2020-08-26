import "package:flutter/material.dart";
import 'package:uichallengetest/colorsconstant.dart';
class AddCalories extends StatefulWidget {
  @override
  _AddCaloriesState createState() => _AddCaloriesState();
}
class _AddCaloriesState extends State<AddCalories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Calories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(125, 0, 0, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage("Assets/4059.jpg"),
                radius: 30,
              ),
            ),
          ],
        ),
        toolbarHeight: 75,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 45,
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  FlatButton(
                    onPressed: () {},
                    color: Appcolor.secondcolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  FlatButton(
                    color: Appcolor.secondcolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.select_all,
                            color: Colors.white,
                          ),
                        ),
                        Text("Scanner", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  FlatButton(
                    color: Appcolor.secondcolor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Text("Add", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
            child: Row(
              children: [
                Text("Added Calories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(145, 0, 0, 0),
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.black26,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView(
              children: [
                buildCalories("Assets/Cheese.png", "25g Cheese",
                    Color(0xff4ACFAB), "514"),
                buildCalories("Assets/bread.png", "150g Slice of Bread",
                    Colors.deepOrange, "275"),
                buildCalories("Assets/avakado.png", "127g Avakado",
                    Colors.lightGreen, "689"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 65, 0, 0),
            child: RaisedButton(
              
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Text(
                  "Validate Calories",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              color: Appcolor.maincolor,
            ),
          )
        ],
      ),
    );
  }

  Widget buildCalories(
      String resim, String food, Color yuvarlakrenk, String calori) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          backgroundImage: AssetImage(resim),
        ),
        title: Text(food),
        subtitle: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: CircleAvatar(
                backgroundColor: yuvarlakrenk,
                radius: 5,
              ),
            ),
            Text(
              "$calori kcal",
              style: TextStyle(color: Colors.black45),
            ),
          ],
        ),
      ),
    );
  }
}
