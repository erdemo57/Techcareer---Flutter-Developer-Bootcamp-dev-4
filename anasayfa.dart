import 'package:flutter/material.dart';
import 'package:odev4/sayfaA.dart';
import 'package:odev4/sayfaX.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ana Sayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  SayfaA()));
            }, child: const Text("A' git")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  SayfaX()));
            }, child: const Text("X' git")),
          ],
        ),
      ),
    );
  }
}
