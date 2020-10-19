import 'package:get_it/get_it.dart';
import 'package:test_thumbrand/bloc/bloc.dart';

// import 'bloc/bloc.dart';
// import 'model/model.dart';
import 'service/service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {

  locator.registerLazySingleton(() => QuoteService());
  // locator.registerLazySingleton(() => AuthService(), instanceName: 'Service Auth');
  
  locator.registerFactory(() => FirstBloc());
  locator.registerFactory(() => SecondBloc());
  
  // locator.registerSingleton<Pemantau>(Pemantau.initial(), instanceName: 'Pemantau Active');
  // locator.registerSingleton<User>(User.initial(), instanceName: 'User Active');
  
  await locator.allReady();
  await locator.get<QuoteService>().init();
}