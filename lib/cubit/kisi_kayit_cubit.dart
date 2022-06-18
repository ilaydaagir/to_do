import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/repo/kisislerdao_repository.dart';

class KisiKayitCubit extends Cubit<void>{ //Kişi bilgisini veri tabanına kaydedip arayüze birşey getirmedği için void olcak
KisiKayitCubit():super(0);
var krepo = KisilerDaoRepository(); //KisilerDaoRepository'deki fonksiyonu kullanabbilmek için KisilerDaoRepository nesnesi tanımladık
Future<void>kayit(String kisi_ad, String kisi_tel) async{
await krepo.kisiKayit(kisi_ad, kisi_tel);    //İşlem veri tabanında yapıldığı için işlem bitene kadar beklenir işlem bitince devam etsin diyoruz
}
}