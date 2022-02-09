import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            color: Colors.black,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: tableWidget(),
        ),
      ],
    );
  }
}

Widget tableWidget() {
  return Table(
    border: TableBorder.all(),
    children: const [
      TableRow(children: [
        Image(
          image: AssetImage("assets/images/imagevad.jpg"),
        ),
        Image(
          image: AssetImage("assets/images/imagevad.jpg"),
        ),
      ]),
      TableRow(children: [
        Image(
          image: AssetImage("assets/images/imagevad.jpg"),
        ),
        Image(
          image: AssetImage("assets/images/imagevad.jpg"),
        ),
      ]),
    ],
  );
}
