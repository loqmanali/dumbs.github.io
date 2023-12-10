import 'dart:developer';

import 'package:dumbs/core/extensions/extension.dart';
import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:dumbs/core/widgets/alerts.dart';
import 'package:dumbs/core/widgets/coustom_sized_box.dart';
import 'package:dumbs/project_plus_dump/cubit/project_plus_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import '../core/helpers/cache_helper.dart';
import '../core/helpers/di.dart';
import '../core/widgets/button_filter_widget.dart';
import '../core/widgets/custom_text.dart';

class QuestionWidget<T> extends StatefulWidget {
  final T question;
  final int questionLength;

  const QuestionWidget({
    super.key,
    required this.question,
    required this.questionLength,
  });

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  int currentQuestionIndex = 0;
  bool showResult = false;
  Set<String> values = <String>{};
  String? savedData;
  MaterialTextSelectionControls controls = MaterialTextSelectionControls();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectPlusCubit, ProjectPlusState>(
      builder: (context, state) {
        final cubit = context.read<ProjectPlusCubit>();
        return LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total Score: ${context.read<ProjectPlusCubit>().totalScore}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SelectableText(
                            'Question #${widget.question.id}',
                            selectionControls: controls,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          cubit.questionAnsweredMap.containsKey(widget.question.id) && cubit.questionAnsweredMap[widget.question.id]!
                              ? const Icon(Icons.check, color: Colors.green)
                              : cubit.questionAnsweredMap[widget.question.id] == null
                                  ? const SizedBox()
                                  : const Icon(Icons.close, color: Colors.red)
                        ],
                      ),
                      Container(
                        width: constraints.maxWidth > 600 ? context.width * 0.6 : context.width,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.deepPurple,
                            width: 2.0,
                          ),
                        ),
                        child: SelectionArea(
                          selectionControls: controls,
                          magnifierConfiguration: const TextMagnifierConfiguration(),
                          contextMenuBuilder: (context, selectionData) {
                            return PopupMenuButton<String>(
                              itemBuilder: (context) {
                                return [
                                  const PopupMenuItem(
                                    value: 'copy',
                                    child: Text('Copy'),
                                  ),
                                  const PopupMenuItem(
                                    value: 'paste',
                                    child: Text('Paste'),
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                if (value == 'copy') {
                                  Clipboard.setData(ClipboardData(text: widget.question.question));
                                }
                              },
                            );
                          },
                          child: HtmlWidget(widget.question.question, customWidgetBuilder: (element) {
                            if (element.localName == 'img') {
                              return Image.asset(
                                element.attributes['src']!,
                                width: context.width,
                                fit: BoxFit.cover,
                              );
                            }
                            return null;
                          }),
                        ),
                      ),
                      1.0.height,
                      SizedBox(
                        width: constraints.maxWidth > 600 ? context.width * 0.6 : context.width,
                        child: ButtonFilterOptionsWidget<String>(
                          height: context.height * 0.35,
                          options: widget.question.answers.answers,
                          bgColor: Colors.deepPurple,
                          borderColor: Colors.deepPurple,
                          unselectedTextColor: Colors.black,
                          scrollDirection: Axis.vertical,
                          allowMultiple: widget.question.answers.isMultipleChoice,
                          maxChoices: widget.question.answers.points,
                          setOptions: (value) {
                            values = value;
                            di<CacheHelper>().saveData(
                              key: 'question_${widget.question.id}',
                              value: value.toString(),
                            );
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: showResult == true || values.isEmpty
                          ? null
                          : () {
                              log('values: ${cubit.questionAnsweredMap}', name: 'QuestionWidget');
                              log('values: ${values.length}', name: 'Values.length');
                              log('correctAnswer: ${widget.question.answers.correctAnswer}', name: 'QuestionWidget');
                              log('currentQuestionIndex: ${cubit.currentQuestionIndex}', name: 'QuestionWidget');

                              if (values.containsAll(widget.question.answers.correctAnswer)) {
                                context.showCustomToast(
                                  title: 'Correct Answer',
                                  subtitle: '',
                                  status: ToastStatus.success,
                                );
                                setState(() {
                                  showResult = true;
                                  // if (cubit.questionAnsweredMap.containsKey(widget.question.id) && cubit.questionAnsweredMap[widget.question.id]!) {
                                  //   // The question was previously answered incorrectly
                                  //   // You may choose to handle this case differently if needed
                                  // } else {
                                  //   // Update the total score only if the question was not answered incorrectly before
                                  //   cubit.totalScore += 1;
                                  // }
                                  // // Set the flag to true indicating that this question has been answered
                                  // cubit.questionAnsweredMap[widget.question.id] = true;
                                  if (cubit.questionAnsweredMap.containsKey(widget.question.id) &&
                                      cubit.questionAnsweredMap[widget.question.id]!) {
                                    return;
                                  } else {
                                    cubit.questionAnsweredMap[widget.question.id] = true;
                                  }
                                    cubit.totalScore += 1;
                                });
                              } else {
                                context.showCustomToast(
                                  title: 'Wrong Answer',
                                  subtitle: '',
                                  status: ToastStatus.error,
                                );
                                setState(() {
                                  showResult = false;
                                  cubit.questionAnsweredMap[widget.question.id] = false;
                                });
                              }
                              if (cubit.currentQuestionIndex == widget.questionLength - 1) {
                                Alerts.showCustomAlertDialog(
                                  context,
                                  defaultActionText: 'OK',
                                  onPressedOk: () {
                                    cubit.currentQuestionIndex = 0;
                                    cubit.totalScore = 0;
                                    cubit.questionAnsweredMap = {};
                                    Navigator.pop(context);
                                  },
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Total Score: ${context.read<ProjectPlusCubit>().totalScore}',
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Correct Answers: ${context.read<ProjectPlusCubit>().totalScore}',
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Wrong Answers: ${widget.questionLength - context.read<ProjectPlusCubit>().totalScore}',
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Percentage of Correct Answers: ${(context.read<ProjectPlusCubit>().totalScore / widget.questionLength * 100).toStringAsFixed(0)}%',
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Percentage of Wrong Answers: ${((widget.questionLength - context.read<ProjectPlusCubit>().totalScore) / widget.questionLength * 100).toStringAsFixed(0)}%',
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      context.read<ProjectPlusCubit>().totalScore / widget.questionLength * 100 >= 75
                                          ? const Text(
                                        'Congratulations, you have passed the exam',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        ),
                                      )
                                          : const Text(
                                        'Sorry, you have failed the exam',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ), title: 'Result',
                                );
                              }
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: values.isEmpty ? Colors.grey : Colors.deepPurple,
                      ),
                      child: const CustomText(
                        text: 'Check Answer',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                showResult == true ? const SizedBox() : 10.0.height,
                showResult == true
                    ? SelectionArea(
                        selectionControls: controls,
                        magnifierConfiguration: const TextMagnifierConfiguration(),
                        onSelectionChanged: (value) {
                          log('value: ${value?.plainText}', name: 'QuestionWidget');
                        },
                        contextMenuBuilder: (context, selectionData) {
                          return PopupMenuButton<String>(
                            itemBuilder: (context) {
                              return [
                                const PopupMenuItem(
                                  value: 'copy',
                                  child: Text('Copy'),
                                ),
                                const PopupMenuItem(
                                  value: 'paste',
                                  child: Text('Paste'),
                                ),
                              ];
                            },
                            onSelected: (value) {
                              if (value == 'copy') {
                                Clipboard.setData(ClipboardData(text: widget.question.answers.correctAnswer.reduce((value, element) => '$value, $element')));
                              }
                            },
                          );
                        },
                        child: Container(
                          width: constraints.maxWidth > 600 ? context.width * 0.6 : context.width,
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: Colors.deepPurple,
                              width: 1.0,
                            ),
                          ),
                          child: HtmlWidget(
                            widget.question.answers.correctAnswer.reduce((value, element) => '$value, $element'),
                          ),
                        ),
                      )
                    : const SizedBox(),
                15.0.height,
              ],
            ),
          );
        });
      },
    );
  }
}
