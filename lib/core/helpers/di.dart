import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'cache_helper.dart';

final di = GetIt.instance;

Future<void> init() async {
  // Navigation service
  // di.registerLazySingleton<NavigationService>(() => NavigationService());

  /// Cubit

  /// Language
  // di.registerFactory<LanguageCubit>(
  //   () => LanguageCubit(
  //     getSavedLangUseCase: di(),
  //     changeLangUseCase: di(),
  //   ),
  // );

  /// Auth Cubit
  // di.registerFactory<AuthCubit>(
  //   () => AuthCubit(authUseCase: di()),
  // );

  /// Language
  // di.registerLazySingleton(() => ChangeLangUseCase(di()));
  // di.registerLazySingleton(() => GetSavedLangUseCase(di()));

  /// UseCase

  /// Auth UseCase
  // di.registerLazySingleton(() => AuthUseCase(di()));

  /// Repository

  /// Language
  // di.registerLazySingleton<LangRepository>(
  //   () => LangRepositoryImpl(langLocalDataSource: di()),
  // );

  /// Auth Repository
  // di.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(authRemoteDataSource: di(), networkInfo: di()),
  // );


  /// Data Source

  /// Language
  // di.registerLazySingleton<LangLocalDataSource>(
  //       () => LangLocalDataSourceImpl(cacheHelper: di()),
  // );

  /// Auth Remote Data Source
  // di.registerLazySingleton<AuthRemoteDataSource>(
  //   () => AuthRemoteDataSourceImpl(dioHelper: di()),
  // );

  // Core
  // di.registerLazySingleton<NetworkInfo>(
  //   () => NetworkInfoImpl(InternetConnectionChecker()),
  // );

  // External
  final prefs = await SharedPreferences.getInstance();
  di.registerLazySingleton<SharedPreferences>(() => prefs);
  di.registerFactory<CacheHelper>(() => CacheHelperImpl(sharedPreferences: di<SharedPreferences>()));
  // di.registerLazySingleton<DioHelper>(() => DioImpl());
  // di.registerLazySingleton(() => InternetConnectionChecker());
}
