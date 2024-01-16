
import 'package:flutter/material.dart';

class HesapOlustur extends StatelessWidget {
  const HesapOlustur({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(centerTitle: true,title:const Text("Hesap Oluştur",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 154, 41, 173)),),),
body:  Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        children: [
          Container(
            width: 125,
            height: 60,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 45), // Yatay mesafe ayarlandı
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Ad",
              ),
            ),
          ),
          Container(
            width: 125,
            height: 60,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5), // Yatay mesafe ayarlandı
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Soyad",
              ),
            ),
          ),
        ],
      ),
      Container(
        width: 300,
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Kullanıcı Adı",
          ),
        ),
      ),
      Container(
        width: 300,
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Şifre",
          ),
        ),
      ),
      Container(
        width: 300,
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Telefon Numarası",
          ),
        ),
      ),
      Container(
        width: 300,
        height: 60,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Doğum Tarihi",
          ),
        ),
      ),
      ElevatedButton(onPressed: (){showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title:  const Text(""),
        content:const Text("Hesap oluşturuldu"),
        actions: [
          TextButton(
            child: const Text("Tamam"),
            onPressed: () {
Navigator.pop(context);              // ...
            },
          ),
        ],
      );
    },
  );}, child: Text("Hesap oluştur")),

    ],
  ),
),
    );
  }
}

