import 'package:flutter/material.dart';


class MyContainerUnselected extends StatelessWidget {
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  String? ImgUrl;
  MyContainerUnselected ({ Key? key, required this.text1, @required this.text2, @required this.text3, @required this.text4, @required this.ImgUrl}): super(key: key);


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
                    color: Colors.blue[200],
                    border: Border.all(
                      color: Colors.blue.shade200,
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
                  height: 15,
                ),
                Text(text3!),
                SizedBox(height: 5),
                Text(
                  text4!,
                ),
              ],
            ),
            SizedBox(
              width: 40.0,
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

