// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:epayment/component/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColor.backGroundColor,
        // ignore: sized_box_for_whitespace
        body: Container(
          height: h,
          child: Stack(children: [_headsection(), _billtile()]),
        ));
  }

  _headsection() {
    return Container(
      height: 310,
      child: Stack(children: [_mainBackGround(), _curveimage(), _buttonpart()]),
    );
  }

  _mainBackGround() {
    return Positioned(
      bottom: 10,
      left: 0,
      child: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('images/background.png'))),
      ),
    );
  }

  _curveimage() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/curve.png'))),
      ),
    );
  }

  _buttonpart() {
    return Positioned(
      bottom: 15,
      right: 55,
      child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/lines.png')),
              boxShadow: [
                BoxShadow(
                    blurRadius: 15,
                    offset: Offset(1, 15),
                    color: Color(0xFF11323d).withOpacity(0.2))
              ])),
    );
  }

  _billtile() {
    return Positioned(
        top: 320,
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width - 30,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xFFd8dbe0),
                    offset: Offset(1, 1),
                    blurRadius: 20,
                    spreadRadius: 10)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30))),

          // inside design of the container

          child: Row(children: [
            //container 1
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/brand1.png'))),
                    ),
                    Text("Kengen Power"),
                  ],
                ),
              ],
            ),
            // container 2
            Container(
              color: Colors.pink,
            )
            // container 3
          ]),
        ));
  }
}
