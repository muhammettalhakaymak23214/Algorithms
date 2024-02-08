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
  int counter = 1;
  int counter2 = numbers.length - 2;
  int counter3 = 0;
  while (counter < numbers.length) {
    left = left * numbers[counter - 1];
    leftList.add(left);
    counter++;
  }
  while (counter2 >= 0) {
    right = right * numbers[counter2 + 1];
    rightList.insert(0, right);
    counter2--;
  }
  while (counter3 < leftList.length) {
    resultList.add(leftList[counter3] * rightList[counter3]);
    counter3++;
  }

  print("Result List : $resultList");
}
