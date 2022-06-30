import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rehab_app/Helpers/Time_liner.dart';
import '../Helpers/Bottom_Bar.dart';
import '../Helpers/Floating_Action_Button.dart';
import '../Helpers/HomePageTopContainer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: Floating_Button(),
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomBar(),
          body: Column(children: [
            SizedBox(height: 25.0,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Good Morning\nJane",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                //physics: NeverScrollableScrollPhysics(),
                child: Container(

                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // height:MediaQuery.of(context).size.height/2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0Xff9e9e9e),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TopContainer(),
                        ),
                      ),
                SizedBox(height: 25.0,),
                Expanded(
                  child: Container(
                   // height: MediaQuery.of(context).size.height/,
                   // color: Colors.red,
                    child: TimeLine(),

                  ),
                )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
