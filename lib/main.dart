import 'package:flutter/material.dart';

import 'package:flutter_for_new_baba_vadika/widgets/backgroud_progressbar_widget.dart';
import 'package:flutter_for_new_baba_vadika/widgets/progresbar_widget..dart';

import 'widgets/background_image_widget.dart';
import 'widgets/show_count_days_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //getDaysTogether();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Stack(
        alignment: Alignment.center,
        children: [
          const BackgroundImageWidget(),
          const Align(
            alignment: Alignment.center,
            child: BackgroundProgressIndicator(),
          ),
          const Align(
            alignment: Alignment.center,
            child: ProgresIndecator(),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onDoubleTap: () {
                print('Double tap');
              },
              child: const ShowCountDaysWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
