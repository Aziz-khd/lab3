import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: ListView(
                // parent listview
                physics: BouncingScrollPhysics(), // this is for decoration
                children: [
                  SizedBox(
                      width: 50,
                      height: 150,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text("option 1"),
                              Image(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2017/04/05/01/15/ocean-2203720_960_720.jpg"),
                                width: 300,
                                height: 150,
                              ),
                              Column(children: [
                                Icon(Icons.car_crash),
                                Icon(Icons.access_time),
                                Icon(Icons.account_box),
                                Icon(Icons.add_location),
                              ]),
                            ],
                          ))),
                  Divider(
                    height: 50,
                  ),
                  SizedBox(
                      width: 50,
                      height: 200,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Text("option 2"),
                            Column(
                              children: [
                                Icon(Icons.school),
                                Icon(Icons.dialpad_outlined),
                                Icon(Icons.file_present),
                                Icon(Icons.zoom_out)
                              ],
                            ),
                            Image(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/07/20/12/57/ambassador-852766_960_720.jpg"),
                              width: 300,
                              height: 200,
                            )
                          ]))),
                  Divider(
                    height: 50,
                  ),
                  SizedBox(
                      width: 50,
                      height: 200,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Text("option 3"),
                            Column(children: [
                              Row(children: [
                                Icon(Icons.accessibility),
                                Icon(Icons.roller_shades_closed_outlined),
                                Icon(Icons.flip_outlined),
                                Icon(Icons.network_wifi_3_bar_rounded)
                              ]),
                              Image(
                                image: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/07/15/06/42/man-845709_960_720.jpg"),
                                width: 300,
                                height: 150,
                              )
                            ])
                          ]))),
                  Divider(
                    height: 50,
                  ),
                  SizedBox(
                      width: 50,
                      height: 200,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Text("option 4"),
                            Column(
                              children: [
                                Image(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2012/05/29/00/43/car-49278_960_720.jpg"),
                                  width: 300,
                                  height: 150,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.person),
                                    Icon(Icons.nightlife),
                                    Icon(Icons.home),
                                    Icon(Icons.elderly_woman_rounded),
                                  ],
                                )
                              ],
                            )
                          ]))),
                  Divider(height: 40),
                  Container(
                      padding: EdgeInsets.only(left: 150, top: 10),
                      child: Row(children: [
                        Icon(
                          Icons.radio_button_checked,
                        ),
                        Icon(Icons.add_box_rounded),
                        Icon(Icons.add_alert_sharp),
                        Icon(Icons.hot_tub)
                      ])),
                ])));
  }
}
