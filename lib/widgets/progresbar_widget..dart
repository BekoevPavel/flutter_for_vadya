import 'package:flutter/material.dart';
import 'package:flutter_for_new_baba_vadika/domain/date_controller.dart';

class ProgresIndecator extends StatelessWidget {
  const ProgresIndecator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: CircularProgressIndicator(
        color: const Color.fromARGB(255, 205, 186, 197),
        backgroundColor: const Color.fromARGB(255, 111, 0, 20),
        strokeWidth: MediaQuery.of(context).size.width * 0.05,
        value: DateController.getInstance().getProccesIndicatorValue(),
        semanticsLabel: 'Linear progress indicator',
      ),
    );
  }
}
