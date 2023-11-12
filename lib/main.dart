import 'dart:developer';
import 'package:dumbs/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/di.dart';
import 'question_widget.dart';

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
          home: const DumpQuestion(),
        );
      },
    );
  }
}

class DumpQuestion extends StatefulWidget {
  const DumpQuestion({super.key});

  @override
  State<DumpQuestion> createState() => _StateDumpQuestion();
}

class _StateDumpQuestion extends State<DumpQuestion> {
  int currentQuestionIndex = 0;

  PageController pageController = PageController(initialPage: 0);

  List<String?> selectedAnswers = List.filled(projectPlusQuestion.length, null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project+ Dump'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            itemCount: projectPlusQuestion.length,
            itemBuilder: (context, index) {
              final question = projectPlusQuestion[index];
              return QuestionWidget(question: question);
            },
            onPageChanged: (index) {
              log('$index', name: 'onPageChanged');
            },
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    pageController.previousPage(duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
                    setState(() {
                      if (currentQuestionIndex == 0) return;
                      currentQuestionIndex--;
                    });
                  },
                  child: const CustomText(
                    text: 'Back',
                    color: Colors.deepPurple,
                  ),
                ),
                CustomText(text: '${currentQuestionIndex + 1}/${projectPlusQuestion.length}'),
                TextButton(
                  onPressed: () {
                    pageController.nextPage(duration: const Duration(milliseconds: 250), curve: Curves.easeIn);
                    setState(() {
                      if (currentQuestionIndex == projectPlusQuestion.length - 1) return;
                      currentQuestionIndex++;
                    });
                  },
                  child: const CustomText(
                    text: 'Next',
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<ProjectPlusQuestion> projectPlusQuestion = [
  ProjectPlusQuestion(
    id: 1,
    question: '''
    <p>DRAG DROP -</p>
    <p>During a gate review meeting, the deliverable was rejected by the customer.
    Review the dashboard.</p>
    <p>Part 1: Drag and drop each task, placing them in the correct order based on the project change control process.</p>
    <p>Part 2: Select the proper document(s) to be updated.</p>
    <img src="assets/Q1-1.png">
    <img src="assets/Q1-2.png">
    ''',
    answers: ProjectPlusAnswers(
      id: 1,
      isMultipleChoice: true,
      points: 2,
      answers: [],
      // correctAnswer: 'C. Hold sessions to understand user challenges. \nE. Log the issue in the project risk register.',
      correctAnswer: {'C. Hold sessions to understand user challenges.', 'E. Log the issue in the project risk register.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 2,
    question:
        'A PM is responsible for implementing a new customer relationship management system and has learned that the sales organization is reluctant to utilize the new system. The organization’s reluctance could jeopardize the success of the project. Which of the following steps should be taken to understand the adoption issues and gain organizational acceptance of the initiative? (Choose two.)',
    answers: ProjectPlusAnswers(
      id: 2,
      isMultipleChoice: true,
      points: 2,
      answers: [
        'A. Train users on the proper use of the system.',
        'B. Escalate the issue to the CCB.',
        'C. Hold sessions to understand user challenges.',
        'D. Track system usage and report user activity.',
        'E. Log the issue in the project risk register.',
        'F. Create a memorandum of acceptable use.'
      ],
      // correctAnswer: 'C. Hold sessions to understand user challenges. \nE. Log the issue in the project risk register.',
      correctAnswer: {'C. Hold sessions to understand user challenges.', 'E. Log the issue in the project risk register.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 3,
    question:
        'Following a successful release, a project manager sent a survey to all stakeholders to gain an understanding of opportunity areas for the team. Which of the following can use the survey results as an input?',
    answers: ProjectPlusAnswers(
      id: 3,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Daily stand-up',
        'B. Project momentum',
        'C. Performance feedback',
        'D. Meeting minutes',
      ],
      correctAnswer: {'C. Performance feedback'},
    ),
  ),
  ProjectPlusQuestion(
    id: 4,
    question: 'Which of the following is an activity that should be used in the closing phase of a project to support the project triple constraint?',
    answers: ProjectPlusAnswers(
      id: 4,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Evaluating the project',
        'B. Releasing the resources',
        'C. Closing the contracts',
        'D. Reconciling the budget',
      ],
      correctAnswer: {'D. Reconciling the budget'},
    ),
  ),
  ProjectPlusQuestion(
    id: 5,
    question: 'During a quality analysis review, the causes of several issues have been highlighted. Which of the following should the project manager use to identify the MOST important causes?',
    answers: ProjectPlusAnswers(
      id: 5,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Ishikawa diagram',
        'B. Scatter diagram',
        'C. Pareto chart',
        'D. Decision tree',
      ],
      correctAnswer: {'C. Pareto chart'},
    ),
  ),
  ProjectPlusQuestion(
    id: 6,
    question: 'Which of the following BEST describes how an organization should coordinate management of multiple related projects?',
    answers: ProjectPlusAnswers(
      id: 6,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Apply the SDLC process.',
        'B. Establish a program.',
        'C. Consult the CCB.',
        'D. Use different frameworks.',
      ],
      correctAnswer: {'B. Establish a program.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 7,
    question:
        'A project team gathers weekly to review its progress. Which of the following is the project manager MOST likely to have prepared to ensure team members who are absent remain informed about assignments?',
    answers: ProjectPlusAnswers(
      id: 7,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Status report',
        'B. Project plan',
        'C. Change log',
        'D. Meeting minutes',
      ],
      correctAnswer: {'D. Meeting minutes'},
    ),
  ),
  ProjectPlusQuestion(
    id: 8,
    question:
        'A project manager prefers to have immediate contact with team members because it allows for faster response times and more interactive discussions. Which of the following communication methods should the project manager use?',
    answers: ProjectPlusAnswers(
      id: 8,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Synchronous',
        'B. Informal',
        'C. Asynchronous',
        'D. Formal',
      ],
      correctAnswer: {'A. Synchronous'},
    ),
  ),
  ProjectPlusQuestion(
    id: 9,
    question: 'As part of the planning phase, a PM has defined tasks, durations, resources, and costs. Which of the following is the NEXT step in the process?',
    answers: ProjectPlusAnswers(
      id: 9,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Update the work breakdown structure.',
        'B. Review the backlog.',
        'C. Seek baseline approval.',
        'D. Establish the resource pool.',
      ],
      correctAnswer: {'C. Seek baseline approval.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 10,
    question: 'A project manager realizes that a project will not be completed on time due to resource constraints. Which of the following actions should the project manager take NEXT?',
    answers: ProjectPlusAnswers(
      id: 10,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Trigger the contingency plan and communicate with the stakeholders.',
        'B. Work with the functional managers to create a work-around.',
        'C. Submit a change request to the change control board.',
        'D. Transfer the risk by hiring a new vendor who was successful on a previous project.',
        'E. Set up an escalation meeting with the sponsor.'
      ],
      correctAnswer: {'A. Trigger the contingency plan and communicate with the stakeholders.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 11,
    question: 'By developing a project schedule, a PM has already validated the constraints, outlined the duration of the tasks and the phases, and confirmed the proper sequence and flow of the '
        'project. Which of the following activities still needs to be performed to complete the schedule?',
    answers: ProjectPlusAnswers(
      id: 11,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Allocate resources.',
        'B. Determine the project budget.',
        'C. Develop a communication plan.',
        'D. Establish baselines.',
      ],
      correctAnswer: {'A. Allocate resources.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 12,
    question: 'A PM has identified all the resources involved in a project. The next step is to identify which resources are responsible for which tasks. Which of the following should be used to '
        'document this information?',
    answers: ProjectPlusAnswers(
      id: 12,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. RFI',
        'B. RACI',
        'C. WBS',
        'D. SOW',
      ],
      correctAnswer: {'B. RACI'},
    ),
  ),
  ProjectPlusQuestion(
    id: 13,
    question: 'During a staff meeting, a project manager voices a concern about the client billing rate for a particular engineer. Which of the following documents would the project manager need in'
        ' order to find this information?',
    answers: ProjectPlusAnswers(
      id: 13,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. SLA',
        'B. TOR',
        'C. SOW',
        'D. NDA',
      ],
      correctAnswer: {'C. SOW'},
    ),
  ),
  ProjectPlusQuestion(
    id: 14,
    question: 'Which of the following should occur when implementing an IT infrastructure change that takes risks into consideration?',
    answers: ProjectPlusAnswers(
      id: 14,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Approving the change request.',
        'B. Developing a rollback plan.',
        'C. Gathering necessary resources.',
        'D. Defining requirements.',
      ],
      correctAnswer: {'B. Developing a rollback plan.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 15,
    question:
        'During the stabilization phase for recently deployed software, an end user reports a bug that is compromising data integrity. Which of the following tools will the project manager MOST likely use?',
    answers: ProjectPlusAnswers(
      id: 15,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Issue log.',
        'B. Defect log.',
        'C. Change log.',
        'D. Task board.',
      ],
      correctAnswer: {'B. Defect log.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 16,
    question: 'A project manager is in the closing phase of an IT asset refresh project that involves the disposal of several computers. The project sponsor notified the project manager that the '
        'company recently received a penalty as a result of disposing of some computers improperly. Which of the following should have been considered during initial planning to prevent this situation?',
    answers: ProjectPlusAnswers(
      id: 16,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. ESG.',
        'B. PHI.',
        'C. PII.',
        'D. ROIL.',
      ],
      correctAnswer: {'A. ESG.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 17,
    question: 'A project manager has been very diligent in maintaining the version control for the documentation of requirements. Which of the following tools is the project manager using?',
    answers: ProjectPlusAnswers(
      id: 17,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Multiauthoring software.',
        'B. Word processor.',
        'C. Real-time polling.',
        'D. Conferencing platforms.',
      ],
      correctAnswer: {'A. Multiauthoring software.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 18,
    question:
        'The project team determines that software installation can only begin after the desktops have been installed and can be powered on. Which of the following dependencies does this represent?',
    answers: ProjectPlusAnswers(
      id: 18,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. External.',
        'B. Internal.',
        'C. Mandatory.',
        'D. Discretionary.',
      ],
      correctAnswer: {'C. Mandatory.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 19,
    question: 'A hurricane delays the shipment of critical equipment for a project. Which of the following is BEST to use to document the effects of this delay?',
    answers: ProjectPlusAnswers(
      id: 19,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Issue log.',
        'B. Gantt chart.',
        'C. Milestone chart.',
        'D. Change control log.',
      ],
      correctAnswer: {'A. Issue log.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 20,
    question:
        'Due to budgetary and time constraints, a PM scheduled a meeting with all stakeholders during the planning phase to review the requirements and come to an agreement on the minimum viable product that would be acceptable. Which of the following would be used to document this input?',
    answers: ProjectPlusAnswers(
      id: 20,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Project change management plan.',
        'B. Project management plan.',
        'C. Milestone chart.',
        'D. Change control log.',
      ],
      correctAnswer: {'B. Project management plan.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 21,
    question: '''
    <p>A project team was instructed to refurbish old desktops. The following provides the details of the issues observed:</p>
    <img src="assets/Q21.png">
    <p>Which of the following issues should be addressed FIRST?</p>
    ''',
    answers: ProjectPlusAnswers(
      id: 21,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Replace missing peripherals because this process can be easy and less costly.',
        'B. An old operating system issue has the most amount of occurrences.',
        'C. Damage to the monitor has the highest percentage.',
        'D. Address each issue as discovered to avoid rework.',
      ],
      correctAnswer: {'B. An old operating system issue has the most amount of occurrences.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 22,
    question:
        'A project manager was not part of a contract negotiation. The project manager is concerned that stakeholders will expect the project to achieve deliverables requested in the RFP. Which of the following documents should the project manager produce FIRST to start communication about the boundaries of the project?',
    answers: ProjectPlusAnswers(
      id: 22,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Milestone chart.',
        'B. Work breakdown structure.',
        'C. Project charter.',
        'D. Detailed scope statement.',
      ],
      correctAnswer: {'C. Project charter.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 23,
    question: 'In a functional organization, a project has been completed successfully. Which of the following actions would the project manager MOST likely perform?',
    answers: ProjectPlusAnswers(
      id: 23,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Assemble a new project with existing resources.',
        'B. Obtain the final report from release management.',
        'C. Notify the functional manager that resources are released.',
        'D. Allocate resources in a different project.',
      ],
      correctAnswer: {'C. Notify the functional manager that resources are released.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 24,
    question:
        'A third party needs to perform a short-term task for which the duration cannot be accurately estimated and the cost cannot be calculated in advance. Which of the following should the project manager put in place before work begins?',
    answers: ProjectPlusAnswers(
      id: 24,
      isMultipleChoice: false,
      points: 1,
      answers: ['A. Time and materials contract.', 'B. Master service agreement.', 'C. Fixed-price contract.', 'D. Statement of work.', 'E. Cost-plus agreement.'],
      correctAnswer: {'A. Time and materials contract.'},
    ),
  ),
  ProjectPlusQuestion(
    id: 25,
    question: 'Which of the following would be MOST beneficial to do before a call to ensure all meeting items are addressed and the correct participants attend?',
    answers: ProjectPlusAnswers(
      id: 25,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Assign action items to attendees.',
        'B. Distribute an agenda.',
        'C. Email the minutes from the previous meeting.',
        'D. Schedule a convenient time.',
      ],
      correctAnswer: {'B. Distribute an agenda.'},
    ),
  ),
];

/*

* */
