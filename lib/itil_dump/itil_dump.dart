import 'package:dumbs/project_plus_dump/project_plus_dump.dart';
import 'package:flutter/material.dart';

import '../question_model.dart';

class ITILDumps extends StatefulWidget {
  const ITILDumps({super.key});

  @override
  State<ITILDumps> createState() => _ITILDumpsState();
}

class _ITILDumpsState extends State<ITILDumps> {
  final PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ITIL Dumps'),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageViewWidget(pageController: pageController, questions: itilQuestion),
          FooterWidget(pageController: pageController, questions: itilQuestion),
        ],
      ),
    );
  }
}

List<QuestionModel> itilQuestion = [
  QuestionModel(
    id: 1,
    question: 'How are target resolution times used in the "incident management" practice?',
    answers: AnswersModel(
      id: 1,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. They are agreed, documented, and communicated to help set user expectations.',
        'B. They are established, reviewed, and reported to ensure that customers are happy with the service.',
        'C. They are initiated, approved, and managed to ensure that predictable responses are achieved',
        'D. They are scheduled, assessed and authorized to reduce the risk of service failures',
      ],
      correctAnswer: {'A. They are agreed, documented, and communicated to help set user expectations.'},
    ),
  ),
  QuestionModel(
    id: 2,
    question: 'Why should some service requests be fulfilled with no additional approvals?',
    answers: AnswersModel(
      id: 2,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. To ensure that spending is properly accounted for.',
        'B. To ensure that information security requirements are met.',
        'C. To streamline the fulfilment workflow.',
        'D. To set user expectations for fulfilment times.',
      ],
      correctAnswer: {'C. To streamline the fulfilment workflow.'},
    ),
  ),
  QuestionModel(
    id: 3,
    question: 'What is a set of specialized organizational capabilities for enabling value for customers in the form of services?',
    answers: AnswersModel(
      id: 3,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Service offering.',
        'B. Service provision.',
        'C. Service management.',
        'D. Service consumption.',
      ],
      correctAnswer: {'C. Service management.'},
    ),
  ),
  QuestionModel(
    id: 4,
    question: 'Which gives a user access to a system?',
    answers: AnswersModel(
      id: 4,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Service requirement.',
        'B. Service agreement.',
        'C. Service consumption.',
        'D. Service provision.',
      ],
      correctAnswer: {'D. Service provision.'},
    ),
  ),
  QuestionModel(
    id: 5,
    question: 'Which statement about managing incidents is CORRECT?',
    answers: AnswersModel(
      id: 5,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Low impact incidents should be resolved efficiently, making logging unnecessary.',
        'B. The "incident management" practice should use a single process regardless of the impact of the incident.',
        'C. Low impact incidents should be resolved efficiently so the resource required is reduced.',
        'D. Incidents with the lowest impact should be resolved first.',
      ],
      correctAnswer: {'C. Low impact incidents should be resolved efficiently so the resource required is reduced.'},
    ),
  ),
  QuestionModel(
    id: 6,
    question: 'Which statement about the service value chain is CORRECT?',
    answers: AnswersModel(
      id: 6,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. The service value chain converts value into demand.',
        'B. Each value chain activity uses different combinations of practices to convert inputs into outputs.',
        'C. Each value chain activity identifies a requirement for resources from an external supplier.',
        'D. The service value chain uses value streams to describe a combination of consumers and providers.',
      ],
      correctAnswer: {'B. Each value chain activity uses different combinations of practices to convert inputs into outputs.'},
    ),
  ),
  QuestionModel(
    id: 7,
    question: 'What describes how components and activities work together to facilitate value creation?',
    answers: AnswersModel(
      id: 7,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. The ITIL service value system.',
        'B. The ITIL guiding principles.',
        'C. The four dimensions of service management.',
        'D. A service relationship.',
      ],
      correctAnswer: {'A. The ITIL service value system.'},
    ),
  ),
  QuestionModel(
    id: 8,
    question: 'Which practice involves the management of vulnerabilities that were not identified before the service went live?',
    answers: AnswersModel(
      id: 8,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Service request management.',
        'B. Problem management.',
        'C. Change control.',
        'D. Service level management.',
      ],
      correctAnswer: {'B. Problem management.'},
    ),
  ),
  QuestionModel(
    id: 9,
    question: 'Which statement about the use of measurement in the "start where you are" guiding principle is CORRECT?',
    answers: AnswersModel(
      id: 9,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. It should always be used to support direct observation.',
        'B. It should always be used instead of direct observation.',
        'C. Measured data is always more accurate than direct observation.',
        'D. The act of measuring always positively impacts results.',
      ],
      correctAnswer: {'A. It should always be used to support direct observation.'},
    ),
  ),
  QuestionModel(
    id: 10,
    question: 'Which ITIL practice recommends performing service reviews to ensure that services continue to meet the needs of the organization?',
    answers: AnswersModel(
      id: 10,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Service desk.',
        'B. Service request management.',
        'C. Service level management.',
        'D. Service configuration management.',
      ],
      correctAnswer: {'C. Service level management.'},
    ),
  ),
  QuestionModel(
    id: 11,
    question: 'What should be considered as part of the "partners and suppliers" dimension?',
    answers: AnswersModel(
      id: 11,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. The level of integration and formality involved in the relationships between organizations.',
        'B. The activities, workflows, controls and procedures needed to achieve the agreed objectives.',
        'C. The information created, managed and used in the course of service provision and consumption.',
        'D. The required skills and competencies of teams and individual members of the organization.',
      ],
      correctAnswer: {'A. The level of integration and formality involved in the relationships between organizations.'},
    ),
  ),
  QuestionModel(
    id: 12,
    question: 'Which practice makes new services available for use?',
    answers: AnswersModel(
      id: 12,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Change enablement.',
        'B. Release management.',
        'C. Deployment management.',
        'D. IT asset management.',
      ],
      correctAnswer: {'B. Release management.'},
    ),
  ),
  QuestionModel(
    id: 13,
    question: 'Which activity contributes to the "where are we now?" step of the "continual improvement" model?',
    answers: AnswersModel(
      id: 13,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Executing improvement actions.',
        'B. Performing baseline assessments.',
        'C. Defining the improvement plan.',
        'D. Understanding the business mission.',
      ],
      correctAnswer: {'B. Performing baseline assessments.'},
    ),
  ),
  QuestionModel(
    id: 14,
    question: 'Which guiding principle considers the importance of customer loyalty?',
    answers: AnswersModel(
      id: 14,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Progress iteratively with feedback.',
        'B. Focus on value.',
        'C. Optimize and automate.',
        'D. Start where you are.',
      ],
      correctAnswer: {'B. Focus on value.'},
    ),
  ),
  QuestionModel(
    id: 15,
    question: 'Which is a recommendation of the guiding principle "think and work holistically"?',
    answers: AnswersModel(
      id: 15,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Conduct a review of existing service management practices and decide what to keep and what to discard.',
        'B. Review how an improvement initiative can be organized into smaller, manageable sections that can be completed in a timely manner.',
        'C. Review service management practices and remove any unnecessary complexity.',
        'D. Use the four dimensions of service management to ensure coordination of all aspects of an improvement initiative.',
      ],
      correctAnswer: {'D. Use the four dimensions of service management to ensure coordination of all aspects of an improvement initiative.'},
    ),
  ),
  QuestionModel(
    id: 16,
    question: 'Which statement about "continual improvement" is CORRECT?',
    answers: AnswersModel(
      id: 16,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. All improvement ideas should be logged in a single "continual improvement register".',
        'B. A single team should carry out "continual improvement" across the organization.',
        'C. "Continual improvement" should have minimal interaction with other practices.',
        'D. Everyone in the organization is responsible for some aspects of "continual improvement".',
      ],
      correctAnswer: {'D. Everyone in the organization is responsible for some aspects of "continual improvement".'},
    ),
  ),
  QuestionModel(
    id: 17,
    question: 'What impact does automation have on a service desk?',
    answers: AnswersModel(
      id: 17,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Less low level work and a greater ability to focus on user experience.',
        'B. Increased phone contact and a reduced ability to focus on user experience.',
        'C. Ability to work from multiple locations, geographically dispersed.',
        'D. Ability to work from a single centralized location.',
      ],
      correctAnswer: {'A. Less low level work and a greater ability to focus on user experience.'},
    ),
  ),
  QuestionModel(
    id: 18,
    question: '''
    <p>Identify the missing word(s) in the following sentence:</p>
    <p>The service desk should be the entry point and single point of contact for the [?] with all of its users.</p>
    ''',
    answers: AnswersModel(
      id: 18,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Service consumer.',
        'B. Service provider.',
        'C. Customer.',
        'D. Supplier.',
      ],
      correctAnswer: {'B. Service provider.'},
    ),
  ),
  QuestionModel(
    id: 19,
    question: 'What aspect of "service level management" asks service consumers what their work involves and how technology helps them?',
    answers: AnswersModel(
      id: 19,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Customer engagement.',
        'B. Operational metrics.',
        'C. Business metrics.',
        'D. Customer feedback.',
      ],
      correctAnswer: {'A. Customer engagement.'},
    ),
  ),
  QuestionModel(
    id: 20,
    question: 'Which is a result of applying the quiding principle "progress iteratively with feedback"?',
    answers: AnswersModel(
      id: 20,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. The ability to discover and respond to failure earlier.',
        'B. Standardization of practices and services.',
        'C. Understanding the customer\'s perception of value.',
        'D. Understanding the current state and identifying what can be reused.',
      ],
      correctAnswer: {'A. The ability to discover and respond to failure earlier.'},
    ),
  ),
  QuestionModel(
    id: 21,
    question: 'What can be used to determine if a service is "fit for purpose"?',
    answers: AnswersModel(
      id: 21,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Availability.',
        'B. Warranty.',
        'C. Outcome.',
        'D. Utility.',
      ],
      correctAnswer: {'D. Utility.'},
    ),
  ),
  QuestionModel(
    id: 22,
    question: 'In service relationships, what is a benefit fo identifying consumer roles?',
    answers: AnswersModel(
      id: 22,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. It enables effective stakeholder management.',
        'B. It provides shared service expectations.',
        'C. It removes constraints from the customer.',
        'D. It enables a common definition of value.',
      ],
      correctAnswer: {'A. It enables effective stakeholder management.'},
    ),
  ),
  QuestionModel(
    id: 23,
    question: 'Which is an external input to the service value chain?',
    answers: AnswersModel(
      id: 23,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. The "improve" value chain activity.',
        'B. An overall plan.',
        'C. Customer requirements.',
        'D. Feedback loops.',
      ],
      correctAnswer: {'C. Customer requirements.'},
    ),
  ),
  QuestionModel(
    id: 24,
    question: 'What term is used to describe whether a service wil meet availability, capacity and security requirements?',
    answers: AnswersModel(
      id: 24,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Outcomes.',
        'B. Value.',
        'C. Utility.',
        'D. Warranty.',
      ],
      correctAnswer: {'D. Warranty.'},
    ),
  ),
  QuestionModel(
    id: 25,
    question: 'What is the purpose of the "incident management" practice?',
    answers: AnswersModel(
      id: 25,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. To minimize the negative impact of incidents by restoring normal service operation as quickly as possible.',
        'B. To capture demand for incident solution and service requests.',
        'C. To reduce the likelihood and impact of incidents by identifying actual and potential causes of incidents.',
        'D. To support the agreed service quality by effective handling of all agreed user-initiated service requests.',
      ],
      correctAnswer: {'A. To minimize the negative impact of incidents by restoring normal service operation as quickly as possible.'},
    ),
  ),
  QuestionModel(
    id: 26,
    question: 'What is defined as an unplanned interruption or reduction in the quality of a service?',
    answers: AnswersModel(
      id: 26,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. An incident.',
        'B. A problem.',
        'C. A change.',
        'D. An event.',
      ],
      correctAnswer: {'A. An incident.'},
    ),
  ),
  QuestionModel(
    id: 27,
    question: 'Which ITIL practice has the purpose to establish and nurture the links between the organization and its stakeholders at strategic and tactical levels?',
    answers: AnswersModel(
      id: 27,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Supplier management.',
        'B. Change control.',
        'C. Relationship management.',
        'D. Service desk.',
      ],
      correctAnswer: {'C. Relationship management.'},
    ),
  ),
  QuestionModel(
    id: 28,
    question: 'What can help to reduce resistance to a planned improvement when applying the guiding principle "collaborate and promote visibility"?',
    answers: AnswersModel(
      id: 28,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Restricting information about the improvement to essential stakeholders only.',
        'B. Increasing collaboration and visibility for the improvement.',
        'C. Involving customers after al planning has been completed.',
        'D. Engaging every stakeholder group ni the same way, with the same communication.',
      ],
      correctAnswer: {'C. Involving customers after al planning has been completed.'},
    ),
  ),
  QuestionModel(
    id: 29,
    question: 'What varies ni size and complexity, and uses functions ot achieve its objectives?',
    answers: AnswersModel(
      id: 29,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. A risk.',
        'B. An organization.',
        'C. A practice.',
        'D. An outcome.',
      ],
      correctAnswer: {'B. An organization.'},
    ),
  ),
  QuestionModel(
    id: 30,
    question: 'Which practice ensures that any addition, modification, or removal of anything that could have an effect on services is assessed and authorized?',
    answers: AnswersModel(
      id: 30,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Deployment management.',
        'B. Release management.',
        'C. Change control.',
        'D. Service configuration management.',
      ],
      correctAnswer: {'C. Change control.'},
    ),
  ),
  QuestionModel(
    id: 31,
    question: 'Which practice has a purpose that includes managing risks to confidentiality, integrity and availability?',
    answers: AnswersModel(
      id: 31,
      points: 1,
      isMultipleChoice: false,
      answers: [
        'A. Information security management.',
        'B. Continual improvement.',
        'C. Monitoring and event management.',
        'D. Service level management.',
      ],
      correctAnswer: {'A. Information security management.'},
    ),
  ),
];


/**


 */