import 'package:flutter/material.dart';
import 'package:flutter_for_new_baba_vadika/domain/date_controller.dart';

class ShowCountDaysWidget extends StatelessWidget {
  const ShowCountDaysWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Вместе',
            style: TextStyle(
              inherit: false,
              fontSize: width * 0.07,
              color: Colors.white,
            ),
          ),
          Text(
            DateController.getInstance().getDaysTogether().toString(),
            style: TextStyle(
              inherit: false,
              fontSize: width * 0.15,
              color: Colors.white,
            ),
          ),
          Text(
            'Дней',
            style: TextStyle(
              inherit: false,
              fontSize: width * 0.07,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
