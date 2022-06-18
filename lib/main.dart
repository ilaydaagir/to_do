import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/cubit/anasayfa_cubit.dart';
import 'package:kisiler_uygulamasi/cubit/kisi_detay_cubit.dart';
import 'package:kisiler_uygulamasi/cubit/kisi_kayit_cubit.dart';
import 'package:kisiler_uygulamasi/views/anasayfa.dart';
import 'package:kisiler_uygulamasi/views/kisi_detay_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context)=>KisiKayitCubit()), BlocProvider(create: (context)=>KisiDetayCubit()),BlocProvider(create: (context)=>AnasayfaCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Anasayfa()
      ),
    );
  }
}

