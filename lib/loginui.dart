
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/anasayfa.dart';
import 'package:flutter_application_1/hesapolustur.dart';

class LoginPanel extends StatelessWidget {
  
   LoginPanel({super.key});
 final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Mavera!',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 154, 41, 173)),),),
     
  body: Center(
  child: 
  SingleChildScrollView(
    child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 300), 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Image.network("https://cdn-icons-png.flaticon.com/512/5087/5087579.png",width: 200,height: 180,),
          Container(
            width: 300,
            height: 60,
            child:  TextField(
              controller: usernameController,
              decoration:const  InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Kullanıcı Adı",
              ),
            ),
          ),
          const SizedBox(height: 30),
        
          Container(
            width: 300,
            height: 60,
            child:   TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Şifre",
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(),
          Align(
              alignment: const Alignment(1, -0.5), 
              child: TextButton(
                onPressed: () { Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HesapOlustur()),
    );
                },
                child: const Text('Hesap oluştur'),
              ),
        ),
          const SizedBox(),
          ElevatedButton(onPressed: () {
             if (usernameController.text=="admin" &&
                    passwordController.text==".") {
                 Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AnaSayfa()),
    );
                } else {
                  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title:  const Text("Giriş Başarısız"),
        content:const Text("Yanlış giriş yaptınız."),
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
  );
                }
            
          }, child: const Text('Giriş Yap')),
        
        ],
      ),
    ),
  ),
),
);
  }}

