import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:internassignment/pages/bedroom.dart';
import 'package:internassignment/utilties/application.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("Assets/bulb.svg"), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("Assets/Iconfeather-home.svg"), label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("Assets/Iconfeather-settings.svg"),
              label: ""),
        ],
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.blue[800],
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 12, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Control",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Panel",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Image.asset(
                  "Assets/user.png",
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 185),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              padding: EdgeInsets.all(0),
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                    child: Text("All Rooms",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 24))),
                SizedBox(
                  height: 20,
                ),
                GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: (2 / 2),
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 17,
                  ),
                  children: item
                      .map(
                        (data) => InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Bedroom(lights: data.nooflight)),
                              );
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(25, 17, 10, 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(data.imgurl),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    data.placename,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    data.nooflight,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.amber,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            )),
                      )
                      .toList(),
                ),
                SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
