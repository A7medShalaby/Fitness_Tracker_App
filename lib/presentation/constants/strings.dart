import 'dart:math';

final Map<int, String> daysOfWeek = {
  1: 'Sat',
  2: 'Sun',
  3: 'Mon',
  4: 'Tue',
  5: 'Wed',
  6: 'Thu',
  7: 'Fri',
};

int randomNumberBetween(int minNumber, int maxNumber) {
  return Random().nextInt(maxNumber - minNumber) + minNumber;
}

String formatNumber(int number) {
  return number.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        (Match match) => "${match[1]},",
      );
}
