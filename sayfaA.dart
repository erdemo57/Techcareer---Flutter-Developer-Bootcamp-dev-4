import 'package:flutter/material.dart';
import 'package:odev4/sayfaB.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  
  Future<bool> geriDonusTusu(BuildContext context) async{
    print("Navigation geri tuşu seçildi");
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sayfa A"),),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const SayfaB()));

              }, child: const Text("Sayfa B Git!")),
            ],
          ),
        ),
      ),
    );
  }
}
