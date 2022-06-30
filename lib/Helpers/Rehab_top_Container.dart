import 'package:flutter/material.dart';

class RehabTopContainer extends StatefulWidget {
  const RehabTopContainer({Key? key}) : super(key: key);

  @override
  State<RehabTopContainer> createState() => _RehabTopContainerState();
}

class _RehabTopContainerState extends State<RehabTopContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          color: Colors.grey[200],
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Session \n ☂️ 16",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Container(color: Colors.grey[400],width: 5,height: 80,),
                    Text("Total Time \n ⌛ 16",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  ],
                ),
                //SizedBox(width: 10.0,),

              ],
            ),
          ),
        ),
      ),
    );
  }
  }

