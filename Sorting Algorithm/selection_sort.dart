import 'dart:io';

void main() {
  List<int> numbers = [4, 2, 5, 1, 65, 98, 6, 78, 5];
  int counter = 0;
  int counter2 = 0;
  int counter3 = 0;
  int minNumber = numbers.first;
  int temp = 0;
  int index = 0;
  stdout.write('\x1B[37m');
  print("Sırasız liste:");
  print("");

  while (counter3 < numbers.length) {
    stdout.write('\x1B[37m');
    stdout.write(' ${numbers[counter3]} ');
    counter3++;
  }
  counter3 = 0;
  print("");
  print("");
  print("Sıralama adımları:");

  while (counter < numbers.length - 1) {
    counter2 = counter + 1;
    minNumber = numbers[counter];
    while (counter2 < numbers.length) {
      if (numbers[counter2] < minNumber) {
        index = counter2;
        minNumber = numbers[counter2];
        temp = 1;
      }
      counter2++;
    }
    if (temp == 1) {
      numbers[index] = numbers[counter];
      numbers[counter] = minNumber;
      // temp = 0;
    }

    print("");
    while (counter3 < numbers.length) {
      if (counter3 == counter) {
        stdout.write('\x1B[31m');
        stdout.write(' ${numbers[counter3]} ');
      } else if (counter3 == index && temp == 1) {
        stdout.write('\x1B[32m');
        stdout.write(' ${numbers[counter3]} ');
      } else {
        stdout.write('\x1B[37m');
        stdout.write(' ${numbers[counter3]} ');
      }

      counter3++;
    }
    counter3 = 0;
    counter++;
    temp = 0;
  }
}
