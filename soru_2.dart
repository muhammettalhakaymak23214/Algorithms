/*
Soru:
Size bir sayı dizisi veriliyor. Bu dizideki her elemanın yerinde, o eleman harici tüm elemanların çarpımını içeren bir dizi döndürün.
Örnek:
Liste = [1,2,3,4,5]
Sonuç = [120, 60, 40, 30, 24]
*/

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  List<int> leftList = [1];
  List<int> rightList = [1];
  List<int> resultList = [];

  int left = 1;
  int right = 1;

  int counter_1 = 1;
  int counter_2 = numbers.length - 2;
  int counter_3 = 0;

  while (counter_1 < numbers.length) {
    left = left * numbers[counter_1 - 1];
    leftList.add(left);
    counter_1++;
  }

  while (counter_2 >= 0) {
    right = right * numbers[counter_2 + 1];
    rightList.insert(0, right);
    counter_2--;
  }

  while (counter_3 < leftList.length) {
    resultList.add(leftList[counter_3] * rightList[counter_3]);
    counter_3++;
  }

  print("Result List : $resultList");
}
