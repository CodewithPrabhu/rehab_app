import 'package:flutter/material.dart';

import '../screens/HomePage.dart';
import '../screens/Practice.dart';
import '../screens/Profile.dart';
import '../screens/Rehab.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: CurrentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.grey[200],

      type: BottomNavigationBarType.fixed,
      iconSize: 30.0,
      // fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ),
        BottomNavigationBarItem(
          label: 'Rehab',
          icon: IconButton(
            icon: Icon(Icons.sports_gymnastics),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RehabPage()));
            },
          ),
        ),
        BottomNavigationBarItem(
          label: 'Practice',
          icon: IconButton(
            icon: Icon(Icons.gps_fixed),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PracticePage()));
            },
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: IconButton(
    icon: Icon(Icons.person_outline),
    onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => ProfilePage()));
    },
    ),
        )],
    //   onTap: (index) {
    //     if (index == 0) {
    //       Navigator.push(
    //           context, MaterialPageRoute(builder: (context) => HomePage()));
    //     } else if (index == 1) {
    //       Navigator.push(
    //           context, MaterialPageRoute(builder: (context) => RehabPage()));
    //     } else if (index == 1) {
    //       Navigator.push(
    //           context, MaterialPageRoute(builder: (context) => PracticePage()));
    //     } else if (index == 1) {
    //       Navigator.push(
    //           context, MaterialPageRoute(builder: (context) => ProfilePage()));
    //     }
    //     setState(() {
    //       CurrentIndex = index;
    //     });
    //   },
    // );
    //   floatingActionButton:  Padding(
    //     padding: const EdgeInsets.only(left: 30,),
    //     child: Container(
    //       height: 70.0,
    //       width: MediaQuery.of(context).size.width,
    //       child: FloatingActionButton.extended(
    //         onPressed: (){
    //
    //         },
    //         label: Text('Start Session',
    //           style: TextStyle(
    //               fontSize: 20.0,
    //               fontWeight: FontWeight.bold
    //           ),),
    //         icon: Icon(Icons.play_arrow_rounded,
    //           size: 50.0,
    //         ),
    //       ),
    //     ),
    //   ),
    );
  }
}
