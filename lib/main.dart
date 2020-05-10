import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Constants.backgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.menu,
                            color: Constants.deepGreen,
                          ),
                          Icon(
                            Icons.search,
                            color: Constants.deepGreen,
                          ),
                        ],
                      ),
                      SizedBox(height: 64),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          _buildStatsCard(
                            title: "Confirmed Cases",
                            number: "1,062",
                            bgColor: Colors.orange[100],
                            iconColor: Colors.orange,
                          ),
                          _buildStatsCard(
                            title: "Total Death",
                            number: "75",
                            bgColor: Colors.redAccent[100],
                            iconColor: Colors.redAccent,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          _buildStatsCard(
                            title: "Total Recoverd",
                            number: "689",
                            bgColor: Colors.green[100],
                            iconColor: Colors.green,
                          ),
                          _buildStatsCard(
                            title: "Total Death",
                            number: "52",
                            bgColor: Colors.purple[100],
                            iconColor: Colors.purple,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 32),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Preventions",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          _buildPreventionItem(
                              image: "assets/wash_hands.png",
                              title: "Wash Hands"),
                          _buildPreventionItem(
                              image: "assets/use_masks.png", title: "Use Masks"),
                          _buildPreventionItem(
                              image: "assets/clean_disinfect.png",
                              title: "Clean Disinfect"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Constants.lightGreen,
                                  Constants.deepGreen
                                ],
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(-5, -20),
                            child: Container(
                              child: Image.asset(
                                "assets/nurse.png",
                                scale: 0.88,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 48,
                            top: 32,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Dial 999 for \nMedical Help!",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "If any symptoms appear",
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPreventionItem({String image, String title}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Image.asset(
            image,
            scale: 0.85,
          ),
        ),
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            color: Constants.deepGreen,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }

  Container _buildStatsCard(
      {String title, String number, Color iconColor, Color bgColor}) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 12),
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: bgColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.directions_run,
                      color: iconColor,
                      size: 18,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(width: 4),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        number,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "People",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                  Container(
                    height: 30,
                    child: Image.asset("assets/chart.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
