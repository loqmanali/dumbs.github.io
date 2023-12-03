import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:dumbs/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/di.dart';
import 'itil_dump/itil_dump.dart';
import 'project_plus_dump/project_plus_dump.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
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
        return MaterialApp(
          title: 'Dumbs App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dumbs App'),
      ),
      body: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: context.height * 0.25,
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProjectPlusDump(),
                      ),
                    );
                  },
                  child: Center(
                    child: CustomText.h3(
                      text: 'Project+ Dump',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: context.height * 0.25,
              child: Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ITILDumps(),
                      ),
                    );
                  },
                  child: Center(
                    child: CustomText.h3(
                      text: 'ITIL Dump',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
