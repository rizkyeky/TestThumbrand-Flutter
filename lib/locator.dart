import 'package:get_it/get_it.dart';

// import 'bloc/bloc.dart';
// import 'model/model.dart';
// import 'service/service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {

  // Waiting for first launch
  // locator.registerLazySingleton(() => CoreService(), instanceName: 'Service Core');
  // locator.registerLazySingleton(() => AuthService(), instanceName: 'Service Auth');
  // locator.registerLazySingleton(() => UserService.admin(), instanceName: 'Service Admin');
  // locator.registerLazySingleton(() => UserService.pemantau(), instanceName: 'Service Pemantau');
  // locator.registerLazySingleton(() => KecamatanService(), instanceName: 'Service Kecamatan');
  // locator.registerLazySingleton(() => KelurahanService(), instanceName: 'Service Kelurahan');
  // locator.registerLazySingleton(() => CalonService(), instanceName: 'Service Calon');
  
  // locator.registerFactory(() => TypeSelectionBloc());
  // locator.registerFactory(() => LogInAdminBloc());
  // locator.registerFactory(() => LogInPemantauBloc());
  // locator.registerFactory(() => DataViewerBloc());
  // locator.registerFactory(() => PemilihanTempatBloc());
  // locator.registerFactory(() => InputDataBloc());
  // locator.registerFactory(() => SignInBloc());
  // locator.registerFactory(() => SignUpBloc());
  // locator.registerFactory(() => PreferenceBloc());
  // locator.registerFactory(() => ProfileBloc());
  // locator.registerFactory(() => EditProfileBloc());
  // locator.registerFactory(() => MyTicketsBloc());
  // locator.registerFactory(() => MyTransactionBloc());
  // locator.registerFactory(() => SearchBloc());

  // locator.registerSingleton<Pemantau>(Pemantau.initial(), instanceName: 'Pemantau Active');
  // locator.registerSingleton<User>(User.initial(), instanceName: 'User Active');
  
  await locator.allReady();
}