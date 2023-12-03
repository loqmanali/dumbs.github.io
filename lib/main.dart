import 'dart:developer';
import 'package:dumbs/project_plus_dump/cubit/project_plus_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/di.dart';
import 'home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<ProjectPlusCubit>(
              create: (context) => ProjectPlusCubit(),
            ),
          ],
          child: MaterialApp(
            title: 'Dumbs App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const HomeScreen(),
          ),
        );
      },
    );
  }
}

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log('onChange -- bloc: ${bloc.runtimeType}, change: $change', name: 'BlocObserver');
    super.onChange(bloc, change);
  }

  @override
  void onCreate(BlocBase bloc) {
    log('onCreate -- bloc: ${bloc.runtimeType}', name: 'BlocObserver');
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    log('onClose -- bloc: ${bloc.runtimeType}', name: 'BlocObserver');
    super.onClose(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError -- bloc: ${bloc.runtimeType}, error: $error, stackTrace: $stackTrace', name: 'BlocObserver');
    super.onError(bloc, error, stackTrace);
  }
}
