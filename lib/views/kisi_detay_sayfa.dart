import 'package:flutter/material.dart';
import 'package:kisiler_uygulamasi/cubit/kisi_detay_cubit.dart';
import 'package:kisiler_uygulamasi/cubit/kisi_kayit_cubit.dart';

import '../entity/kisiler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KisiDetaySayfa extends StatefulWidget {
  Kisiler kisi;


  KisiDetaySayfa({required this.kisi});

  @override
  State<KisiDetaySayfa> createState() => _KisiDetaySayfaState();
}

class _KisiDetaySayfaState extends State<KisiDetaySayfa> {

  var tfKisiAdi = TextEditingController();
  var tfKisiTel = TextEditingController();


  Future<void> guncelle(int kisi_Id,String kisi_ad,String kisi_tel) async{
    print("Kişi Güncelle : $kisi_ad - $kisi_tel - $kisi_Id");
  }
@override
void initState(){
    super.initState();
    var kisi = widget.kisi;
    tfKisiAdi.text = kisi.kisi_ad;
    tfKisiTel.text = kisi.kisi_tel;

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kişi Detay")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAdi,decoration: const InputDecoration(hintText: "Kişi Ad")),
              TextField(controller: tfKisiTel,decoration: const InputDecoration(hintText: "Kişi Tel")),
              ElevatedButton(onPressed: (){
                context.read<KisiDetayCubit>().guncelle(widget.kisi.kisi_id, tfKisiAdi.text, tfKisiTel.text);
              }, child: const Text("GÜNCELLE"))
            ],
          ),
        ),
      ),
    );
  }
}
