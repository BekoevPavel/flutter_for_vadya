import 'package:flutter/material.dart';

class BackgroundProgressIndicator extends StatelessWidget {
  const BackgroundProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: CircularProgressIndicator(
        backgroundColor: Colors.black,
        strokeWidth: MediaQuery.of(context).size.width * 0.09,
        value: 0,
        semanticsLabel: 'Linear progress indicator',
      ),
    );
  }
}
