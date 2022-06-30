import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rehab_app/Helpers/RehabPageBody.dart';
import 'package:rehab_app/Helpers/RehabPageListBuilder.dart';
import '../Helpers/Bottom_Bar.dart';

class RehabPage extends StatefulWidget {

  @override
  State<RehabPage> createState() => _RehabPageState();
}

class _RehabPageState extends State<RehabPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Rehab Programme",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                RehabBody(),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
