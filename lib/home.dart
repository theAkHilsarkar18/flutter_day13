import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0,
          leading: Icon(Icons.all_inclusive, size: 30),
          centerTitle: true,
          title:
              Text("Stack", style: TextStyle(letterSpacing: 2, fontSize: 25)),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200),
              Stack(
                children: [
                  // container 1 , purple
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 5),
                      ],
                    ),
                  ),

                  // container 2 , indigo
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(30),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),

                  // container 3 , lightblue
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(60),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),

                  // container 4 , green
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(90),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),

                  // container 5 , ambeer
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(120),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),

                  // container 6, orange
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(150),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),

                  // container 7 , redAcent
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(180),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
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
