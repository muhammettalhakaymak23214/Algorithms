/*
Soru:
Size bir sayı dizisi ve 'k' sayısı veriliyor. Bu dizideki herhangi iki sayının toplamının 'k' olup olmadığını bulan bir program yazınız.
Örnek:
Liste = [10, 15, 3, 7]
k = 17 için 10 ve 7 sayılarının toplamı 17 ediyor.
*/

void main() {
  List<int> sayiListesi = [10, 19, 3, 2];
  int k = 17;
  print(hesapla(k: k, sayiListesi: sayiListesi));
}

bool hesapla({required int k, required List<int> sayiListesi}) {
  int sayac = 0;
  List<int> ikinciListe = [];
  while (sayac < sayiListesi.length) {
    if (ikinciListe.contains(sayiListesi[sayac])) {
      return true;
    }
    ikinciListe.add(k - sayiListesi[sayac]);
    sayac++;
  }

  return false;
}
