import 'package:intl/intl.dart';
import 'package:test/test.dart';
import 'package:kosher_dart/kosher_dart.dart';

void main() {
  GeoLocation geoLocation = GeoLocation.setLocation(
    "Jerusalem",
    31.7964453,
    35.2453987,
    DateTime.now(),
  );
  ComplexZmanimCalendar complexZmanimCalendar =
      ComplexZmanimCalendar.intGeoLocation(geoLocation);
  test('testWeekend', () async {
    // Friday
    complexZmanimCalendar.setCalendar(DateTime(2021, 12, 24));
    expect(_getCandleLighting(complexZmanimCalendar), "16:22");
    // Saturday
    complexZmanimCalendar.setCalendar(DateTime(2021, 12, 25));
    expect(_getCandleLighting(complexZmanimCalendar), null);
  });
  test('testYomTov', () async {
    // Rosh Hashana
    complexZmanimCalendar.setCalendar(DateTime(2021, 9, 6));
    expect(_getCandleLighting(complexZmanimCalendar), "18:38");
    // Second Yom Tov
    complexZmanimCalendar.setCalendar(DateTime(2021, 9, 7));
    expect(_getCandleLighting(complexZmanimCalendar), "19:11");
    // Second Yom Tov after Shabbat
    complexZmanimCalendar.setCalendar(DateTime(2020, 9, 19));
    expect(_getCandleLighting(complexZmanimCalendar), "18:55");
  });
  test('testChanukah', () async {
    complexZmanimCalendar.setCalendar(DateTime(2021, 11, 30));
    expect(_getCandleLighting(complexZmanimCalendar), "16:53");
    complexZmanimCalendar.setCalendar(DateTime(2021, 12, 3));
    expect(_getCandleLighting(complexZmanimCalendar), "16:16");
  });
  test('testCholHamoed', () async {
    complexZmanimCalendar.setCalendar(DateTime(2021, 9, 23));
    expect(_getCandleLighting(complexZmanimCalendar), null);
  });
}

String? _getCandleLighting(ComplexZmanimCalendar complexZmanimCalendar) {
  DateFormat dateFormat = DateFormat("HH:mm");
  DateTime? candleLighting = complexZmanimCalendar.getCandleLighting();
  return candleLighting != null ? dateFormat.format(candleLighting) : null;
}
