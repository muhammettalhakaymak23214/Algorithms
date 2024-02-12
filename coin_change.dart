/*
Coin Change:
https://www.geeksforgeeks.org/find-minimum-number-of-coins-that-make-a-change/
*/

void main() {
  List<int> moneys = [200, 100, 50, 20, 10, 5, 1];
  List<int> moneysList = [];
  int targetMoney = 9;
  int totalMoney = 0;
  int i = 0;
  int counter = 0;
  print(calculate(targetMoney, totalMoney, moneys, i, moneysList));
}

List<int> calculate(targetMoney, totalMoney, moneys, i, moneyList) {
  while (targetMoney != totalMoney) {
    if (totalMoney + moneys[i] <= targetMoney) {
      totalMoney = totalMoney + moneys[i];
      moneyList.add(moneys[i]);
      i = 0;
    } else {
      i++;
    }
  }

  printResult(moneyList, moneys);
  return moneyList;
}

void printResult(List moneyList, List moneys) {
  int counter = 0;
  int i = 0;
  int counter2 = 0;
  while (counter < moneys.length) {
    while (i < moneyList.length) {
      if (moneys[counter] == moneyList[i]) {
        counter2++;
      }
      i++;
    }
    print(counter2.toString() + " Adet : " + moneys[counter].toString());
    counter++;
    counter2 = 0;
    i = 0;
  }
}
