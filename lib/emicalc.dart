import 'dart:math';

import 'package:flutter/material.dart';

class EMIcalc extends StatefulWidget {
  const EMIcalc({Key? key}) : super(key: key);

  @override
  State<EMIcalc> createState() => _EMIcalcState();
}

class _EMIcalcState extends State<EMIcalc> {
  double loanAmount = 100000;
  double loanInterest = 5;
  double loanYears = 5;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2C3333),
          leading: Icon(Icons.all_inclusive),
          title: Text("EMI calc",
              style: TextStyle(color: Color(0xFFE7F6F2), letterSpacing: 2)),
        ),
        body: Stack(
          children: [
            // main container background
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF395B64),
              ),
            ),

            // container of slider
            Center(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 40, right: 40, bottom: 25, top: 100),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFA5C9CA),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),

                        // loan amount slider
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 25, top: 20),
                              child: Text("Loan Amount",
                                  style: TextStyle(
                                      letterSpacing: 2, fontSize: 15)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 180, top: 20),
                              child: Text("\$ $loanAmount",
                                  style: TextStyle(
                                      letterSpacing: 2, fontSize: 15)),
                            ),
                          ],
                        ),
                        Slider(
                          max: 1000000,
                          divisions: 10,
                          activeColor: Color(0xFF2C3333),
                          inactiveColor: Color(0xFF395B50),
                          value: loanAmount,
                          onChanged: (value) {
                            setState(() {
                              loanAmount = value;
                            });
                          },
                        ),

                        // interest slider
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 25, top: 20),
                              child: Text("Loan Interest",
                                  style: TextStyle(
                                      letterSpacing: 2, fontSize: 15)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 225, top: 20),
                              child: Text("$loanInterest%",
                                  style: TextStyle(
                                      letterSpacing: 2, fontSize: 15)),
                            ),
                          ],
                        ),
                        Slider(
                          max: 15,
                          divisions: 15,
                          activeColor: Color(0xFF2C3333),
                          inactiveColor: Color(0xFF395B50),
                          value: loanInterest,
                          onChanged: (value) {
                            setState(() {
                              loanInterest = value;
                            });
                          },
                        ),

                        // emi by year
                        // loan amount slider
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 25, top: 20),
                              child: Text("Total Years",
                                  style: TextStyle(
                                      letterSpacing: 2, fontSize: 15)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 200, top: 20),
                              child: Text("$loanYears Years",
                                  style: TextStyle(
                                      letterSpacing: 2, fontSize: 15)),
                            ),
                          ],
                        ),
                        Slider(
                          max: 10,
                          divisions: 10,
                          activeColor: Color(0xFF2C3333),
                          inactiveColor: Color(0xFF395B50),
                          value: loanYears,
                          onChanged: (value) {
                            setState(() {
                              loanYears = value;
                            });
                          },
                        ),

                        SizedBox(
                          height: 40,
                        ),
                        // row for clear and calculate

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 55,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color(0xFF2C3333),
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF2C3333),
                                    Color(0xFF395B64),
                                  ])),
                            ),

                            SizedBox(width: 50,),
                            Container(
                              height: 55,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color(0xFF2C3333),
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF2C3333),
                                    Color(0xFF395B64),
                                  ])),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
