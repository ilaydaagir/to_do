
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/entity/kisiler.dart';
import 'package:kisiler_uygulamasi/repo/kisislerdao_repository.dart';

class AnasayfaCubit extends Cubit<List<Kisiler>>{
  AnasayfaCubit():super(<Kisiler>[]);
  var krepo = KisilerDaoRepository();
  Future<void> kisileriYukle()async{
    var liste = await krepo.tumKisileriAl();
    emit(liste);
  }

  Future<void> ara(String aramaKelimesi) async{
    var liste = await krepo.kisiAra(aramaKelimesi);
    emit(liste);
  }

  Future<void> sil(int kisi_id) async{
    await krepo.kisiSil(kisi_id);
    await kisileriYukle();
  }

}