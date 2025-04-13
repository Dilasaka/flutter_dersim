import 'package:flutter/material.dart';

void main() {
  var degisken = 'dart';
  var degisken2 = 2;
  var degisken3 = 6.8;
  
  var degisken4 = true;
  // var butun veri tiplerini tutabilir tipini kendi anlıyor.
  print(degisken);
  print(degisken4.runtimeType);
  
  int sayi = 12;
  
  num number = degisken2;
  // num hem int hem double aynı anda tutabiliyor.
  print(number);
  
  
  
  String yazi = "Flutter";
  yazi = "Dart"; // sonradan değişebiliyor
  print(yazi);
  
  //final veya const
  
  const String kelime = "Merhaba"; // sonradan değişemiyor


  // bilinmeyen internetten gelen bir değer olunca final kullanılıyor.
  // veya deger farklı bir değişkenden gelseydi.
  
  print(yazi + " " +sayi.toString());



  const String yazii = "Deneme";
  const int sayii = 36;

  print("$yazii $sayii");
  
  
  
  print("yeni örnekler 1  -------------");
  
  const String yazii2 = "36";
  const int sayii2 = 36;

  print(yazii2 == sayii2); // tipleri aynımı kontrol et.
  print(yazii2 == sayii2.toString());
  print(int.parse(yazii2) == sayii2);
  
  
  print("yeni örnekler 2  -------------");
  
  
  const deger1 = 40;
  const deger2 = 25;
  
  print(deger1 > deger2); // büyükmü küçükmü kontrol ediyoruz.
  print(deger1 < deger2);
  
  print(deger1 >= deger2);
  
  print("yeni örnekler 3  -------------");
  
  if(deger1 > 35)
  {
    print(" deger1 büyüktür 35'den");
  }
  
  else if(deger1 < 35)
  {
    print(" deger1 küçüktür 35'den");
  }
  
  else
  {
    print(" deger1 35'e eşittir");
  }
    
  print("yeni örnekler 4  -------------");
  
  switch(deger1)
  {
    case 30:
      print("deger1 = 30");
      break;
    case 40:
      print("deger1 = 40");
      break;
    default:
      print("Hiçbirini karşılamadı");
  }
  
  print("yeni örnekler 5  -------------");
  
  for(var i = 0 ; i<=10;i++)
  {
    print("Sayi : $i");
  }
  
  print("yeni örnekler 6  -------------");
  
  var liste = ["Elma","Armut","Mandalina",5,true];
  print(liste);
    
  List liste2 = ["Elma2","Armut2","Mandalina2",5,true];
  print(liste2);
  
  print(liste2[3]);
  
  for(var i = 0 ; i<=4;i++)
  {
    var a = liste2[i];
    print("$i . Eleman : $a ");
  }
  print(" ");
   for(var i = 0 ; i<liste.length;i++)//eleman sayısı bilmiyorsak
  {
    var a = liste[i];
    print("$i . Eleman : $a ");
  }
  
  
 print("yeni örnekler 7  -------------");
  
 liste.forEach((eleman) { print(eleman); });
  
 liste2.forEach((eleman2) =>  print(eleman2));
  
 
 print("yeni örnekler 7  -------------"); 
  
  Map sozluk =
  {
    "hayvan" : "kedi", // bu bir map
    "sayılar" : [1,2,3,4]
  };
  
  print(sozluk);
  print(sozluk['hayvan']);

  print(sozluk['sayılar'][1]);
  
  sozluk.forEach(( isim ,deger) => print("$isim degeri ise : $deger"));
  
  print(" ");
    //isim (key) value (deger)
  
  sozluk.forEach(( isim ,deger) {
    print("$isim degeri ise : $deger");
    
    if(deger is List){ // listeyse tüm elemanları tek tek yazıcak(örneğin sayılar)
      for(var eleman in deger){
        print(" -> $eleman");
      }
    }
  });
                
  print("yeni örnekler 8  -------------"); 
  
  List elemanlar =[ "Eleman 1","Eleman 2","Eleman 3"];
  
  for (var eleman in elemanlar ){
    // var kullanmak degerlerin türü birbitinden farklıysa veya bilmiyorsak daha mantıklı.
    print(eleman);
  }
  
  print(" ");
  print("yeni örnekler 9  -------------");
  
  int sayideneme = 0;
  
  while(sayideneme <= 5){
    print(sayideneme);
    sayideneme++;
  }
print(" ");
print("yeni örnekler 9  -------------");


void fonksiyon() {
  print("Fonksiyon çalıştı");
}
fonksiyon();
  
String fonksiyon2() { // void de bir tiptir , herhangi birşey döndürmeyip sadece içindekini döndürdüğü anlamına gelir.
  return "Fonksiyon çalıştı2";
}
print(fonksiyon2());

print(" ");
print("yeni örnekler 9  -------------");
String? yazideneme = "Merhaba"; // dışardan bir değer alıyor olsaydık null bir degerde gelebilirdi,
// gelebilecek degerin null da olabileceği için String'in yanina ? koyduk.Null gelirse deger String seğil null tipi olur!!

if(yazideneme == null)
{
  print("deger gelmedi");
}
else{
  print(yazideneme);
  
}

String? yazideneme2 = null;
print(yazideneme2 ?? "Null degeri"); //Daha kısa hali yukarıdaki kodun.
    
print(" ");
print("yeni örnekler 9 class -------------");

Okul nesne1 = Okul("Ali",13);
Okul nesne2= Okul("Mehmet",14);
//Okul("Ayşe",12);
print(nesne1.isim +" "+ nesne1.yas.toString());

nesne1.yazdir();

List ogrenciler = [
  Ogrenci("Ali",13),
  Ogrenci("Ahmet",14),
  Ogrenci("Ayşe",15)
];

for(Ogrenci ogrenci in ogrenciler){
  print(ogrenci.yas);
}


Ogrenci2 ali = Ogrenci2(isim: "Ali", yas: 12); 

}
class Okul {
  final String isim; // değişmesin diye bide işte şimdideğerleri bilmiyoruz dışardan alıyoruz o yüzden final
  final int yas;

  Okul(this.isim , this.yas); // isim ve yaşı dışarıdan al demek bu.
 
  void yazdir(){
    print("isim : $isim , Yas :$yas");
  }
}
class Ogrenci {
  final String isim; 
  final int yas;

  Ogrenci(this.isim , this.yas); 
 
  void yazdir(){
    print("isim : $isim , Yas :$yas");
  }
}
class Ogrenci2 {
  final String isim; 
  num yas;

  Ogrenci2({required this.isim , required this.yas}); // zorunlu olarak eklerken verilmesi,yazılması gerektiklerinde kullanırız.Zorunlu kılmak
 
  void yazdir(){
    print("isim : $isim , Yas :$yas");
  }
}