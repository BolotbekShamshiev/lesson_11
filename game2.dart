import 'dart:io';
import 'dart:math';

void main() {
  randomSearch();
}

randomSearch() {
  int min = 1;
  int max = 100;
  int mid = Random().nextInt(100);
  int counter = 1;

  String userAnswer = '';

  while (userAnswer != 'yes') {
    print('Ваше число $mid?');
    userAnswer = stdin.readLineSync()!;
    counter++;

    if (userAnswer == '+') {
      min = mid + 1;
      mid = min + Random().nextInt(max - min);
    } else if (userAnswer == '-') {
      max = mid - 1;
      mid = min + Random().nextInt(max - min);
    }
  }
  print('Количество шагов: $counter');
}
