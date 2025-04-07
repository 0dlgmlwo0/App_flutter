void main() {
  var input = '2025-03-11';
  print(getWeekday(input));
}

String getWeekday(String date) {
  DateTime parsedDate = DateTime.parse(date);
  List<String> weekdays = ['월', '화', '수', '목', '금', '토', '일'];
  return weekdays[parsedDate.weekday - 1] + '요일';
}
