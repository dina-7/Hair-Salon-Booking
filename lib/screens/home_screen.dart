import 'package:doctor_appointment_ui/colors.dart';
import 'package:doctor_appointment_ui/screens/makeup_category_screen.dart';
import 'package:doctor_appointment_ui/screens/nails_category_screen.dart';
import 'package:doctor_appointment_ui/screens/waxing_category_screen.dart';
import 'package:doctor_appointment_ui/widgets/d_section.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'hair_category_screen.dart';

class HomeScreen extends StatelessWidget {
  List<String> catNames = [
    "Hair",
    "Makeup",
    "Nails",
    "Waxing",
  ];

  List<Icon> catIcons = [
    Icon(MdiIcons.hairDryer, color: pColor, size: 30),
    Icon(MdiIcons.brush, color: pColor, size: 30),
    Icon(MdiIcons.handBackLeft, color: pColor, size: 30),
    Icon(MdiIcons.laserPointer, color: pColor, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0xFFD9E4EE),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      pColor.withOpacity(0.8),
                      pColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("images/beautysalons.jpeg"),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Hi, User",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Beauty is good for\n the soul",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              "Tips&Tricks",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: bColor.withOpacity(0.7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: catNames.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              if (catNames[index] == "Hair") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HairCategoryScreen(),
                                  ),
                                );
                              } else if (catNames[index] == "Makeup") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MakeupCategoryScreen(),
                                  ),
                                );
                              } else if (catNames[index] == "Nails") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NailsCategoryScreen(),
                                  ),
                                );
                              } else if (catNames[index] == "Waxing") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        WaxingCategoryScreen(),
                                  ),
                                );
                              }
                            },
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF2F8FF),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: catIcons[index],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  catNames[index],
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Text(
                        "Book now",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: bColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                    DoctorsSection(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Your App',
    home: HomeScreen(),
  ));
}
