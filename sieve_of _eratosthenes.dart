/*
Sieve of Eratosthenes:
  https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
*/
void main() {
  int n = 100;
  List<int> numberSequence = [];
  List<int> primeNumber = [];
  int i = 2;
  int selectedNumber = 0;
  while (i < n + 1) {
    numberSequence.add(i);
    i++;
  }
  print(numberSequence);
  while (numberSequence.isNotEmpty) {
    primeNumber.add(numberSequence[0]);
    selectedNumber = numberSequence[0];
    int counter = 0;
    while (counter < numberSequence.length) {
      if (numberSequence[counter] % selectedNumber == 0) {
        numberSequence.removeAt(counter);
      }
      counter++;
    }
  }
  print(numberSequence);
  print(primeNumber);
}
