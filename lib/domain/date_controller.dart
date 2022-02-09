class DateController {
  DateTime startTime = new DateTime(2022, 1, 1);
  static DateController? _instance;
  DateController._();

  static DateController getInstance() {
    return _instance ??= DateController._();
  }

  int getDaysTogether() {
    DateTime now = DateTime.now();

    return now.difference(startTime).inDays;
  }

  double getProccesIndicatorValue() {
    print(getDaysTogether() / 365);
    return getDaysTogether() / 365;
  }
}
