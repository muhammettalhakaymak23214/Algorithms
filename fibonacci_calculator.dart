void main() {
  int firstNum = 1;
  int secondNum = 1;
  int tempNum = 0;
  List<int> fibonacci = [];
  fibonacci.add(firstNum);
  fibonacci.add(secondNum);
  int fibonacciLength = 5;
  int sayac = 0;

  while (sayac < fibonacciLength - 2) {
    tempNum = secondNum;
    secondNum = secondNum + firstNum;
    firstNum = tempNum;
    fibonacci.add(secondNum);
    sayac++;
  }
  print(fibonacci);
}
