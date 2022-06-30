import 'package:flutter/material.dart';

class Floating_Button extends StatelessWidget {
  const Floating_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,),
      child: Container(
        height: 70.0,
        width: MediaQuery.of(context).size.width,
        child: FloatingActionButton.extended(
          onPressed: (){},
          label: Text('Start Session',
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),),
          icon: Icon(Icons.play_arrow_rounded,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
