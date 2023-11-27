import 'dart:developer';

import 'package:dumbs/core/extensions/extension.dart';
import 'package:dumbs/core/extensions/media_query_extension.dart';
import 'package:dumbs/core/widgets/alerts.dart';
import 'package:dumbs/core/widgets/coustom_sized_box.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import 'core/helpers/cache_helper.dart';
import 'core/helpers/di.dart';
import 'core/widgets/button_filter_widget.dart';
import 'core/widgets/custom_text.dart';

class QuestionWidget extends StatefulWidget {
  final ProjectPlusQuestion question;

  const QuestionWidget({
    super.key,
    required this.question,
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
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // CustomText.h5(
                  //   text: 'Question #${widget.question.id}',
                  //   color: Colors.indigo,
                  // ),
                  SelectableText(
                    'Question #${widget.question.id}',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                      }
                          // child: CustomText(
                          //   text: widget.question.question,
                          //   fontSize: constraints.maxWidth > 600 ? 5.0.sp : 11.0.sp,
                          //   fontWeight: FontWeight.bold,
                          //   textAlign: TextAlign.justify,
                          // ),
                          ),
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
                  onPressed: () {
                    log('correctAnswer: ${widget.question.answers.correctAnswer}', name: 'QuestionWidget');
                    if (values.isEmpty) {
                      context.showSnackBar(
                        text: 'Please select an answer',
                        status: SnackStatus.warning,
                        textColor: Colors.black,
                      );
                    } else {
                      if (values.containsAll(widget.question.answers.correctAnswer)) {
                        context.showSnackBar(
                          text: 'Correct Answer',
                          status: SnackStatus.success,
                          textColor: Colors.white,
                        );
                        final getData = di<CacheHelper>().getData(key: 'question_${widget.question.id}');
                        log('getData: $getData', name: 'QuestionWidget');
                        savedData = getData ?? '';
                        setState(() {
                          showResult = true;
                        });
                      } else {
                        context.showSnackBar(
                          text: 'Wrong Answer',
                          status: SnackStatus.error,
                          textColor: Colors.black,
                        );
                        setState(() {
                          showResult = false;
                        });
                      }
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
                ? Container(
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
                    // child: CustomText(
                    //   text: widget.question.answers.correctAnswer.reduce((value, element) => '$value, $element'),
                    // ),
                  )
                : const SizedBox(),
            15.0.height,
          ],
        ),
      );
    });
  }
}

class ProjectPlusQuestion {
  final int id;
  final String question;
  final ProjectPlusAnswers answers;

  ProjectPlusQuestion({required this.id, required this.question, required this.answers});
}

class ProjectPlusAnswers {
  final int id;
  final List<String> answers;
  final Set<String> correctAnswer;
  final int points;
  final bool isMultipleChoice;

  ProjectPlusAnswers({
    required this.id,
    required this.answers,
    required this.correctAnswer,
    required this.isMultipleChoice,
    required this.points,
  });
}
