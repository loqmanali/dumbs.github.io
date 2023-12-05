import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/widgets/custom_text.dart';
import 'dump_question_screen.dart';
import 'project_plus_dump/cubit/project_plus_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dumbs App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
        child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: context.read<ProjectPlusCubit>().projects.length,
            itemBuilder: (context, index) {
              final project = context.read<ProjectPlusCubit>().projects[index];
              return Card(
                child: InkWell(
                  onTap: () {
                    context.read<ProjectPlusCubit>().currentQuestionIndex = 0;
                    context.read<ProjectPlusCubit>().totalScore = 0;
                    context.read<ProjectPlusCubit>().questionAnsweredMap = {};
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DumpQuestionScreen(
                          questions: project.questions,
                          title: project.name,
                        ),
                      ),
                    );
                  },
                  child: Center(
                    child: CustomText.h3(
                      text: project.name,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
