import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rehab_app/Helpers/RehabPageListBuilder.dart';

class TopContainer extends StatefulWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Progress",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "50%",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),

              ],
            ),
            //SizedBox(width: 10.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width/2,
                lineHeight: 10.0,
                percent: 0.5,
                backgroundColor: Colors.grey[400],
                progressColor: Colors.blue,
              ),
            ),
            Row(
              children: [
                Icon(Icons.check_box_sharp,color: Colors.green,size: 42.0,),
                SizedBox(width: 5,),
                Text("Completed\n2 Sessions"),
                SizedBox(width: 100,),
                Icon(Icons.arrow_circle_right,color: Colors.indigo,size: 42.0,),
                Text("Pending\n2 Sessions"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
