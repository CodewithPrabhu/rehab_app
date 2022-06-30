import 'package:flutter/material.dart';
import 'RehabPageListBuilder.dart';
import 'Rehab_top_Container.dart';

class RehabBody extends StatefulWidget {
  const RehabBody({Key? key}) : super(key: key);

  @override
  State<RehabBody> createState() => _RehabBodyState();
}

class _RehabBodyState extends State<RehabBody> {
  @override
  Widget build(BuildContext context) {
    return  Container(
     // height: MediaQuery.of(context).size.height,
     // width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12.0),
            child: Container(
             // width: 200,
              //height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('images/rehab.png'),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'History',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 35.0),),
                Icon(
                  Icons.filter_alt,
                  size: 40,),
              ],
            ),
          ),
          RehabTopContainer(),
          Container(
              height: MediaQuery.of(context).size.height,
              child: RehabPageList()),
        ],
      ),

    );
  }
}
