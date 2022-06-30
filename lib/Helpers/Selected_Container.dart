import 'package:flutter/material.dart';


class MyContainerSelected extends StatelessWidget {
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  String? ImgUrl;
  MyContainerSelected({ Key? key, required this.text1, @required this.text2, @required this.text3, @required this.text4, @required this.ImgUrl}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0Xffeeeeee),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  text1!,
                  style: TextStyle(
                    fontSize: 30.0,
// color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 25.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                    border: Border.all(
                      color: Colors.yellow.shade700,
//color: Colors.blue,
                      width: 3,
                    ),
                    borderRadius:
                    BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      text2!,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(text3!),
//SizedBox(height: 5),
                Expanded(
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    children: [
                      ClipOval(
                        child: Material(
                          color: Colors
                              .blue, // Button color
                          child: InkWell(
                            splashColor: Colors.indigo, // Splash color
                            onTap: () {},
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.restart_alt,
                                  color:
                                  Colors.white,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(text4!),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius
                                          .circular(
                                          18.0),
                                      side: BorderSide(
                                          color: Colors
                                              .red)))))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xfff48fb1),
                  width: 3,
                ),
                borderRadius:
                BorderRadius.circular(12),
              ),
              child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      ImgUrl!)),
            )
          ],
        ),
      ),
    );
  }
}




/////////////////////////////////////////////
// Container(
// height: 150.0,
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// border: Border.all(
// color: Color(0Xffeeeeee),
// width: 3,
// ),
// borderRadius: BorderRadius.circular(12),
// ),
// child: Padding(
// padding: const EdgeInsets.all(12.0),
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// Column(
// children: [
// Text(
// 'Session 2',
// style: TextStyle(
// fontSize: 30.0,
// // color: Colors.blue,
// fontWeight: FontWeight.bold,
// ),
// ),
// Container(
// height: 25.0,
// width: 110.0,
// decoration: BoxDecoration(
// color: Colors.yellow[700],
// border: Border.all(
// color: Colors.yellow.shade700,
// //color: Colors.blue,
// width: 3,
// ),
// borderRadius:
// BorderRadius.circular(12),
// ),
// child: Center(
// child: Text(
// 'Performed',
// style: TextStyle(
// color: Colors.white,
// ),
// ),
// ),
// ),
// SizedBox(
// height: 5,
// ),
// Text('Enter Pain Score'),
// //SizedBox(height: 5),
// Expanded(
// child: Row(
// mainAxisAlignment:
// MainAxisAlignment
//     .spaceBetween,
// children: [
// ClipOval(
// child: Material(
// color: Colors
//     .blue, // Button color
// child: InkWell(
// splashColor: Colors
//     .red, // Splash color
// onTap: () {},
// child: SizedBox(
// width: 40,
// height: 40,
// child: Icon(
// Icons.restart_alt,
// color:
// Colors.white,
// )),
// ),
// ),
// ),
// SizedBox(width: 5),
// ElevatedButton(
// onPressed: () {},
// child: Text('Retry'),
// style: ButtonStyle(
// shape: MaterialStateProperty.all<
//     RoundedRectangleBorder>(
// RoundedRectangleBorder(
// borderRadius:
// BorderRadius
//     .circular(
// 18.0),
// side: BorderSide(
// color: Colors
//     .red)))))
// ],
// ),
// ),
// ],
// ),
// SizedBox(
// width: 40.0,
// ),
// Container(
// width: 120,
// decoration: BoxDecoration(
// border: Border.all(
// color: Color(0xfff48fb1),
// width: 3,
// ),
// borderRadius:
// BorderRadius.circular(12),
// ),
// child: Image(
// fit: BoxFit.fill,
// image: NetworkImage(
// 'https://previews.123rf.com/images/hammett79/hammett791511/hammett79151100026/49170989-little-girl-sitting-in-yoga-pose-over-color-background-.jpg?fj=1')),
// )
// ],
// ),
// ),
// ),
