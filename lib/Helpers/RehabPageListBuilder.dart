import 'package:flutter/material.dart';

class RehabPageList extends StatefulWidget {
  const RehabPageList({Key? key}) : super(key: key);

  @override
  State<RehabPageList> createState() => _RehabPageListState();
}

class _RehabPageListState extends State<RehabPageList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        //shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Card(
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage('https://cdn.dribbble.com/users/1338391/screenshots/15399667/media/bfee5543d91709e4e7585b31d354591d.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(width: 35.0,),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Row(children: [
                            Icon(Icons.access_time),
                            Text('   10:20 AM')
                          ],),

                          Row(children: [
                            Icon(Icons.date_range_rounded),
                            Text('20-11-2020')
                          ],),
                        ],),
                         SizedBox(width: 100,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('View Result',),
                        )
                      ],
                    ),
                  )

                ]
            );
          }),
    );
  }
}

//
//
// class RehabPageList extends StatefulWidget {
//
//   @override
//   State<RehabPageList> createState() => _RehabPageListState();
// }
//
// class _RehabPageListState extends State<RehabPageList> {
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: 10,
//         itemBuilder: (context, index) {
//           return Container(
//             child: Row(
//               children: [
//                 Container(
//                   height: 50,
//                   width: 50,
//                   child: Card(
//                     child: Image(
//                       image: NetworkImage('https://cdn.dribbble.com/users/1338391/screenshots/15399667/media/bfee5543d91709e4e7585b31d354591d.jpg'),
//                     ),
//                   ),
//                 )
//                ]
//             ),
//           );
//         });
//   }
// }
