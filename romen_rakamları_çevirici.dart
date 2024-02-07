/*
Bu kod bloğunda verilen bir roman rakamı onluk tabandaki karşılığına dönüştürülmektedir.
-----------------------------
Roman rakamlarının değerleri:
I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000
-------------------------------
*/

void main() {
  String romanRakami = "MDXCVII";

  var romanRakamiDizi = romanRakami.split('');
  List<int> sayiDizisi = [];

  int sayac = 0;
  while (sayac < romanRakamiDizi.length) {
    if (romanRakamiDizi[sayac] == 'I') {
      sayiDizisi.add(1);
    } else if (romanRakamiDizi[sayac] == 'V') {
      sayiDizisi.add(5);
    } else if (romanRakamiDizi[sayac] == 'X') {
      sayiDizisi.add(10);
    } else if (romanRakamiDizi[sayac] == 'L') {
      sayiDizisi.add(50);
    } else if (romanRakamiDizi[sayac] == 'C') {
      sayiDizisi.add(100);
    } else if (romanRakamiDizi[sayac] == 'D') {
      sayiDizisi.add(500);
    } else if (romanRakamiDizi[sayac] == 'M') {
      sayiDizisi.add(1000);
    } else {
      print("------------------- Hata! -------------------");
    }

    sayac++;
  }
  print(sayiDizisi);
  print(sayiDizisi.length);

  int geciciDeger = 0;
  int sonuc = 0;
  int i = 0;
  while (i < sayiDizisi.length - 1) {
    if (sayiDizisi[i] >= sayiDizisi[i + 1]) {
      sonuc = sonuc + sayiDizisi[i];
    } else if (sayiDizisi[i] < sayiDizisi[i + 1]) {
      geciciDeger = sayiDizisi[i + 1] - sayiDizisi[i];
      sonuc = sonuc + geciciDeger;
      i++;
    }

    i++;
  }

  sonuc = sonuc + sayiDizisi.last;
  print("------------------");
  print(sonuc);
}
