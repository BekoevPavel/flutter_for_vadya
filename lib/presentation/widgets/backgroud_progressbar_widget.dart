import 'package:flutter/material.dart';

class BackgroundProgressIndicator extends StatelessWidget {
  const BackgroundProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(40),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
            Radius.circular(500.0) //                 <--- border radius here
            ),
      ),
      //padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.8),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 0.9,
    );
  }
}
