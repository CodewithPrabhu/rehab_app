import 'package:flutter/material.dart';

import 'Selected_Container.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({Key? key}) : super(key: key);

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
          reverse: true,
          //physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 2.0,
                        height: 15.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 2.0,
                        height: 15.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 2.0,
                        height: 15.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),

                        child: Icon(Icons.check_circle,color: Colors.blueAccent,size: 40.0,),
                      )
                    ],
                  ),
                 // SizedBox(height: 30.0,width: 15,),
                  Expanded(
                    child: MyContainerSelected(text1: 'Session ${index+1}',
                      text2: 'Performed',
                      text3: 'Enter Pain Score',
                      text4: '08:12 AM',
                      ImgUrl: 'https://previews.123rf.com/images/vasvas/vasvas1412/vasvas141200082/34141951-yoga-pose-abstract-color-illustration-over-white-background.jpg?fj=1',
                    ),
                  ),

                ],
              ),
            );
          }),
    );
  }
}
