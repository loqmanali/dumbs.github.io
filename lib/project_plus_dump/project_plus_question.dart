import '../question_model.dart';

List<QuestionModel> projectPlusQuestion = [
  QuestionModel(
    id: 1,
    question: '''
    <p>DRAG DROP -</p>
    <p>During a gate review meeting, the deliverable was rejected by the customer. Review the dashboard.</p>
    <p>Part 1: Drag and drop each task, placing them in the correct order based on the project change control process.</p>
    <p>Part 2: Select the proper document(s) to be updated.</p>
    <img src="assets/Q1-1.png">
    <img src="assets/Q1-2.png">
    ''',
    answers: AnswersModel(
      id: 1,
      isMultipleChoice: true,
      points: 2,
      answers: [],
      // correctAnswer: 'C. Hold sessions to understand user challenges. \nE. Log the issue in the project risk register.',
      correctAnswer: {'C. Hold sessions to understand user challenges.', 'E. Log the issue in the project risk register.'},
    ),
  ),
  QuestionModel(
    id: 2,
    question:
    'A PM is responsible for implementing a new customer relationship management system and has learned that the sales organization is reluctant to utilize the new system. The organization’s reluctance could jeopardize the success of the project. Which of the following steps should be taken to understand the adoption issues and gain organizational acceptance of the initiative? (Choose two.)',
    answers: AnswersModel(
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
  QuestionModel(
    id: 3,
    question:
    'Following a successful release, a project manager sent a survey to all stakeholders to gain an understanding of opportunity areas for the team. Which of the following can use the survey results as an input?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 4,
    question: 'Which of the following is an activity that should be used in the closing phase of a project to support the project triple constraint?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 5,
    question: 'During a quality analysis review, the causes of several issues have been highlighted. Which of the following should the project manager use to identify the MOST important causes?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 6,
    question: 'Which of the following BEST describes how an organization should coordinate management of multiple related projects?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 7,
    question:
    'A project team gathers weekly to review its progress. Which of the following is the project manager MOST likely to have prepared to ensure team members who are absent remain informed about assignments?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 8,
    question:
    'A project manager prefers to have immediate contact with team members because it allows for faster response times and more interactive discussions. Which of the following communication methods should the project manager use?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 9,
    question: 'As part of the planning phase, a PM has defined tasks, durations, resources, and costs. Which of the following is the NEXT step in the process?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 10,
    question: 'A project manager realizes that a project will not be completed on time due to resource constraints. Which of the following actions should the project manager take NEXT?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 11,
    question: 'By developing a project schedule, a PM has already validated the constraints, outlined the duration of the tasks and the phases, and confirmed the proper sequence and flow of the '
        'project. Which of the following activities still needs to be performed to complete the schedule?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 12,
    question: 'A PM has identified all the resources involved in a project. The next step is to identify which resources are responsible for which tasks. Which of the following should be used to '
        'document this information?',
    answers: AnswersModel(
      id: 12,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. RFI [Request for Information].',
        'B. RACI [Responsible, Accountable, Consulted, Informed].',
        'C. WBS [Work Breakdown Structure].',
        'D. SOW [Statement of Work].',
      ],
      correctAnswer: {'B. RACI [Responsible, Accountable, Consulted, Informed].'},
    ),
  ),
  QuestionModel(
    id: 13,
    question: 'During a staff meeting, a project manager voices a concern about the client billing rate for a particular engineer. Which of the following documents would the project manager need in'
        ' order to find this information?',
    answers: AnswersModel(
      id: 13,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. SLA [Service Level Agreement].',
        'B. TOR [Terms of Reference].',
        'C. SOW [Statement of Work].',
        'D. NDA [Non-Disclosure Agreement].',
      ],
      correctAnswer: {'C. SOW [Statement of Work].'},
    ),
  ),
  QuestionModel(
    id: 14,
    question: 'Which of the following should occur when implementing an IT infrastructure change that takes risks into consideration?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 15,
    question:
    'During the stabilization phase for recently deployed software, an end user reports a bug that is compromising data integrity. Which of the following tools will the project manager MOST likely use?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 16,
    question: 'A project manager is in the closing phase of an IT asset refresh project that involves the disposal of several computers. The project sponsor notified the project manager that the '
        'company recently received a penalty as a result of disposing of some computers improperly. Which of the following should have been considered during initial planning to prevent this situation?',
    answers: AnswersModel(
      id: 16,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. ESG [Environmental, Social, and Governance].',
        'B. PHI [Protected Health Information].',
        'C. PII [Personally Identifiable Information].',
        'D. ROIL [Return on Investment in Learning].',
      ],
      correctAnswer: {'A. ESG [Environmental, Social, and Governance].'},
    ),
  ),
  QuestionModel(
    id: 17,
    question: 'A project manager has been very diligent in maintaining the version control for the documentation of requirements. Which of the following tools is the project manager using?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 18,
    question:
    'The project team determines that software installation can only begin after the desktops have been installed and can be powered on. Which of the following dependencies does this represent?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 19,
    question: 'A hurricane delays the shipment of critical equipment for a project. Which of the following is BEST to use to document the effects of this delay?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 20,
    question:
    'Due to budgetary and time constraints, a PM scheduled a meeting with all stakeholders during the planning phase to review the requirements and come to an agreement on the minimum viable product that would be acceptable. Which of the following would be used to document this input?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 21,
    question: '''
    <p>A project team was instructed to refurbish old desktops. The following provides the details of the issues observed:</p>
    <img src="assets/Q21.png">
    <p>Which of the following issues should be addressed FIRST?</p>
    ''',
    answers: AnswersModel(
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
  QuestionModel(
    id: 22,
    question:
    'A project manager was not part of a contract negotiation. The project manager is concerned that stakeholders will expect the project to achieve deliverables requested in the RFP. Which of the following documents should the project manager produce FIRST to start communication about the boundaries of the project?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 23,
    question: 'In a functional organization, a project has been completed successfully. Which of the following actions would the project manager MOST likely perform?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 24,
    question:
    'A third party needs to perform a short-term task for which the duration cannot be accurately estimated and the cost cannot be calculated in advance. Which of the following should the project manager put in place before work begins?',
    answers: AnswersModel(
      id: 24,
      isMultipleChoice: false,
      points: 1,
      answers: ['A. Time and materials contract.', 'B. Master service agreement.', 'C. Fixed-price contract.', 'D. Statement of work.', 'E. Cost-plus agreement.'],
      correctAnswer: {'A. Time and materials contract.'},
    ),
  ),
  QuestionModel(
    id: 25,
    question: 'Which of the following would be MOST beneficial to do before a call to ensure all meeting items are addressed and the correct participants attend?',
    answers: AnswersModel(
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
  QuestionModel(
    id: 26,
    question: 'While developing a project charter, a PM discovers that some of the legal requirements have not been addressed during the project concept preparation, which could result in '
        'significant financial penalties against the organization. The PM knows that implementation of appropriate changes is costly and will exceed the budget and scope of the project. Which of the following should the PM do FIRST?',
    answers: AnswersModel(
      id: 26,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Escalate the finding to the change control board.',
        'B. Add a risk to the risk register for validation.',
        'C. Consult the RACI matrix to identify ownership of the risk.',
        'D. Have a meeting with the project sponsor and main stakeholders.',
      ],
      correctAnswer: {'D. Have a meeting with the project sponsor and main stakeholders.'},
    ),
  ),
  QuestionModel(
    id: 27,
    question:
    'A company that is implementing an updated version of its main product hired a new project manager to lead the project. Prior to the start of the project, the sponsor asked the project manager to prepare a report on the defects found in the previous project to avoid a decrease in production. The report shows that the two main defects are related to cosmetic and physical damage to the product. Which of the following charts would BEST prioritize which defects to address?',
    answers: AnswersModel(
      id: 27,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Pareto.',
        'B. Run.',
        'C. Control.',
        'D. Histogram.',
      ],
      correctAnswer: {'A. Pareto.'},
    ),
  ),
  QuestionModel(
    id: 28,
    question: 'Which of the following activities would a project manager perform during the closing phase? (Choose three.)',
    answers: AnswersModel(
      id: 28,
      isMultipleChoice: true,
      points: 3,
      answers: [
        'A. Lessons learned.',
        'B. Risk analysis.',
        'C. Removing resources.',
        'D. Acquiring resources.',
        'E. Statement of work sign-off.',
        'F. Stakeholder analysis.',
        'G. Removing access.',
      ],
      correctAnswer: {'A. Lessons learned.', 'C. Removing resources.', 'G. Removing access.'},
    ),
  ),
  QuestionModel(
    id: 29,
    question: 'Which of the following is a quality assurance tool?',
    answers: AnswersModel(
      id: 29,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Defining project goals.',
        'B. Identifying the root cause analysis.',
        'C. Assessing employee efficiency.',
        'D. Assessing skill gaps.',
      ],
      correctAnswer: {'B. Identifying the root cause analysis.'},
    ),
  ),
  QuestionModel(
    id: 30,
    question:
    'A project manager sent equipment to a global project team for testing purposes. Only 70% of the project team received the equipment for testing. Which of the following considerations is impacting the rest of the team?',
    answers: AnswersModel(
      id: 30,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Quality assurance.',
        'B. Organizational branding restrictions.',
        'C. State privacy acts.',
        'D. Country legal regulations.',
      ],
      correctAnswer: {'D. Country legal regulations.'},
    ),
  ),
  QuestionModel(
    id: 31,
    question:
    'A project manager has been assigned to a new project. During the planning phase, the project manager needs to get an understanding of the purpose of the project. Which of the following should the project manager do?',
    answers: AnswersModel(
      id: 31,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Collate the lessons learned.',
        'B. Perform a gap analysis.',
        'C. Review existing artifacts.',
        'D. Conduct a retrospective.',
      ],
      correctAnswer: {'C. Review existing artifacts.'},
    ),
  ),
  QuestionModel(
    id: 32,
    question: 'Someone claiming to be from a tax agency sent an email to a team member asking for access to the project repository. Which of the following BEST describes this scenario?',
    answers: AnswersModel(
      id: 32,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Social engineering.',
        'B. Phishing.',
        'C. Spoofing.',
        'D. Hacking.',
      ],
      correctAnswer: {'B. Phishing.'},
    ),
  ),
  QuestionModel(
    id: 33,
    question:
    'A stakeholder works in a remote location and has not been replying to emails. The Internet service in that location is intermittent, and the stakeholder prefers to be contacted by telephone. Which of the following artifacts should the project manager have prepared to avoid this situation?',
    answers: AnswersModel(
      id: 33,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Responsibility assignment matrix.',
        'B. Acceptable communication channels.',
        'C. Risk registry.',
        'D. Staff directory.',
      ],
      correctAnswer: {'B. Acceptable communication channels.'},
    ),
  ),
  QuestionModel(
    id: 34,
    question: '''
    <p>A project team evaluated the performance of a new reporting system and the quantity of queries to be processed during predetermined time stamps.</p>
    <img src="assets/Q34.png">
    <p>Which of the following is the current status of the process?</p>
    ''',
    answers: AnswersModel(
      id: 34,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Based on the rule of seven, the process is under control.',
        'B. The amount of data is insufficient to determine if quality is low.',
        'C. The process is out of control and should be revised.',
        'D. The goal should be adjusted since most of the data points are close to the lower limit.',
      ],
      correctAnswer: {'C. The process is out of control and should be revised.'},
    ),
  ),
  QuestionModel(
    id: 35,
    question:
    'After a release, the project sponsor received an escalation from an executive about the extension of the downtime after the scheduled window. Which of the following should be added to the issue log?',
    answers: AnswersModel(
      id: 35,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Continuous integration.',
        'B. Rollback plan.',
        'C. Customer notification.',
        'D. Automated testing.',
      ],
      correctAnswer: {'C. Customer notification.'},
    ),
  ),
  QuestionModel(
    id: 36,
    question:
    'Due to multiple changes, the sign-off for the project scope baseline is delayed. The project sponsor has restricted the budget for this project. Which of the following should the project manager MOST likely do to move forward?',
    answers: AnswersModel(
      id: 36,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Communicate with the affected stakeholders.',
        'B. Initiate a formal change request to modify the cost.',
        'C. Adjust the scope to stay within the cost.',
        'D. Set a new cost using a lightweight estimation method.',
      ],
      correctAnswer: {'A. Communicate with the affected stakeholders.'},
    ),
  ),
  QuestionModel(
    id: 37,
    question:
    'As a result of an approved change, the project manager updates the project plan with the newest project end date. Which of the following change control processes should the project manager complete NEXT?',
    answers: AnswersModel(
      id: 37,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Document the request in the change control log.',
        'B. Communicate the change deployment.',
        'C. Conduct an impact assessment.',
        'D. Implement the change.',
      ],
      correctAnswer: {'B. Communicate the change deployment.'},
    ),
  ),
  QuestionModel(
    id: 38,
    question:
    'An IT intern was assigned to set up workstations as part of a project. The IT intern was very careful to do the task well and initially referred to notes while performing the task. By the end of the two-week rotation, the IT intern no longer needed the notes and completed more set-ups in less time. Which of the following MOST likely represents the observed relationship in this scenario?',
    answers: AnswersModel(
      id: 38,
      isMultipleChoice: false,
      points: 1,
      answers: [
        '''<p>A. <img src="assets/Q38-A.png" alt=""></p>''',
        '<p>B. <img src="assets/Q38-B.png" alt=""></p>',
        '<p>C. <img src="assets/Q38-C.png" alt=""></p>',
        '<p>D. <img src="assets/Q38-D.png" alt=""></p>',
      ],
      correctAnswer: {'''<p>A. <img src="assets/Q38-A.png" alt=""></p>'''},
    ),
  ),
  QuestionModel(
    id: 39,
    question: 'An opportunity emerged in the middle of a project life cycle. Which of the following is the BEST action for the project manager to take?',
    answers: AnswersModel(
      id: 39,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Exploit the risk.',
        'B. Accept the risk.',
        'C. Avoid the risk.',
        'D. Transfer the risk.',
      ],
      correctAnswer: {'A. Exploit the risk.'},
    ),
  ),
  QuestionModel(
    id: 40,
    question: 'The high-level technical requirements for a new application state that the application should be suitable to support enterprise-level client-server solutions. Which of the following meets these requirements?',
    answers: AnswersModel(
      id: 40,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Data warehouse.',
        'B. SQL database.',
        'C. Multitier architecture.',
        'D. Content management system.',
      ],
      correctAnswer: {'C. Multitier architecture.'},
    ),
  ),
  QuestionModel(
    id: 41,
    question: 'A project manager was just assigned to a new project. Which of the following activities should the project manager undertake after accepting the project? (Choose two.)',
    answers: AnswersModel(
      id: 41,
      isMultipleChoice: true,
      points: 2,
      answers: [
        'A. Review the detailed plan.',
        'B. Develop a preliminary scope.',
        'C. Develop a transition plan.',
        'D. Develop a project management plan.',
        'E. Review the resource pool.',
        'F. Review the project objectives.',
      ],
      correctAnswer: {'D. Develop a project management plan.', 'F. Review the project objectives.'},
    ),
  ),
  QuestionModel(
    id: 42,
    question: 'A program manager is reviewing the project portfolio and prioritizing each project based on the company’s strategic plan. Which of the following should be considered in this evaluation? (Choose two.)',
    answers: AnswersModel(
      id: 42,
      isMultipleChoice: true,
      points: 2,
      answers: [
        'A. Company vision.',
        'B. Global environment.',
        'C. Brand value.',
        'D. Mission statement.',
        'E. Portfolio budget.',
        'F. Local legislation.',
      ],
      correctAnswer: {'A. Company vision.', 'B. Global environment.'},
    ),
  ),
  QuestionModel(
    id: 43,
    question: 'Halfway through a project, the sponsor states that the project is taking too long to complete. Which of the following should the project manager consult?',
    answers: AnswersModel(
      id: 43,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Gantt chart.',
        'B. Maintenance window schedule.',
        'C. Functional requirements.',
        'D. Test results.',
      ],
      correctAnswer: {'A. Gantt chart.'},
    ),
  ),
  QuestionModel(
    id: 44,
    question: 'A visual that displays team progress was created for stand-up meetings. Which of the following BEST describes what is being represented on the visual?',
    answers: AnswersModel(
      id: 44,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Decision board.',
        'B. Whiteboard.',
        'C. Task board.',
        'D. Dashboard.',
      ],
      correctAnswer: {'C. Task board.'},
    ),
  ),
  QuestionModel(
    id: 45,
    question: 'A project manager is assigned to a multinational project with team members from different continents. Which of the following is the MOST important aspect for the project manager to consider?',
    answers: AnswersModel(
      id: 45,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Resource allocation.',
        'B. Communication security.',
        'C. Technological factors.',
        'D. Cultural differences.',
      ],
      correctAnswer: {'D. Cultural differences.'},
    ),
  ),
  QuestionModel(
    id: 46,
    question: '''
    <p>During a brainstorming session, a project team is elaborating on what caused the unexpected crash of the website that the team was developing. Given the following:</p>
    <img src="assets/Q46.png">
    <p>Which of the following was the initial cause of the issue?</p>
    ''',
    answers: AnswersModel(
      id: 46,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Inadequate memory.',
        'B. Incorrect configuration.',
        'C. Lack of infrastructure.',
        'D. Inadequate instructions.',
      ],
      correctAnswer: {'B. Incorrect configuration.'},
    ),
  ),
  QuestionModel(
    id: 47,
    question: 'Which of the following describes three-tier architecture?',
    answers: AnswersModel(
      id: 47,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Conceptual, design, and implementation stages.',
        'B. Presentation, application, and data processing.',
        'C. Network, software, and security.',
        'D. Development, testing, and production environment.',
      ],
      correctAnswer: {'B. Presentation, application, and data processing.'},
    ),
  ),
  QuestionModel(
    id: 48,
    question: 'After determining the appropriate maintenance window, which of the following should occur NEXT in the operational infrastructure change process?',
    answers: AnswersModel(
      id: 48,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Implement the change.',
        'B. Approve the test plan.',
        'C. Notify customers.',
        'D. Develop a rollback plan.',
      ],
      correctAnswer: {'D. Develop a rollback plan.'},
    ),
  ),
  QuestionModel(
    id: 49,
    question: 'Which of the following offers administrators more direct control over operating systems?',
    answers: AnswersModel(
      id: 49,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Infrastructure as a service.',
        'B. Software as a service.',
        'C. Functions as a service.',
        'D. Platform as a service.',
      ],
      correctAnswer: {'A. Infrastructure as a service.'},
    ),
  ),
  QuestionModel(
    id: 50,
    question: 'Which of the following items must be protected as PII? (Choose two.)',
    answers: AnswersModel(
      id: 50,
      isMultipleChoice: true,
      points: 2,
      answers: [
        'A. Job title.',
        'B. Home address.',
        'C. Work phone number.',
        'D. Time zone.',
        'E. Date of birth.',
        'F. Blood type.',
      ],
      correctAnswer: {'B. Home address.', 'E. Date of birth.'},
    ),
  ),
  QuestionModel(
    id: 51,
    question: 'A critical business initiative introduced new processes and technology to the organization. Which of the following approaches should be used to ensure the deliverables are increasingly adopted and leveraged by the organization over time?',
    answers: AnswersModel(
      id: 51,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Creation of a social news forum.',
        'B. Management directives to use the new system.',
        'C. New user kickoff meeting.',
        'D. Monthly feedback and training sessions.',
      ],
      correctAnswer: {'D. Monthly feedback and training sessions.'},
    ),
  ),
  QuestionModel(
    id: 52,
    question: '''
    <p>A project sponsor asked the PM to provide a summary of the current financial status. The PM uses the following burn up chart for the analysis:</p>
    <img src="assets/Q52.png">
    <p>Based on the chart, which of the following is the current status of the project?</p>
    ''',
    answers: AnswersModel(
      id: 52,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Behind schedule and over budget.',
        'B. Behind schedule and under budget.',
        'C. Ahead of schedule and over budget.',
        'D. Ahead of schedule and under budget.',
      ],
      correctAnswer: {'A. Behind schedule and over budget.'},
    ),
  ),
  QuestionModel(
    id: 53,
    question: 'Which of the following criteria would favor using the agile methodology to manage an upcoming project?',
    answers: AnswersModel(
      id: 53,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Strong projectized organization.',
        'B. Medium risk.',
        'C. Lack of resources.',
        'D. Multiple undefined tasks.',
      ],
      correctAnswer: {'D. Multiple undefined tasks.'},
    ),
  ),
  QuestionModel(
    id: 54,
    question: '''
      <p>A client provides a project plan to the assigned project manager and suggests that the project manager and team just need to execute the plan. Upon further investigation, the document contains:</p>
      <p>Purpose -</p>
      <p>Scope of work -</p>
      <p>Location of work -</p>
      <p>Period of performance -</p>
      <p>Deliverables schedule -</p>
      <p>Applicable standards -</p>
      <p>Acceptance criteria -</p>
      <p>Special requirements -</p>
      <p>Payment schedule -</p>
      <p>Which of the following documents did the client provide to the project manager?</p>
    ''',
    answers: AnswersModel(
      id: 54,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. RFP [Request for Proposal].',
        'B. WBS [Work Breakdown Structure].',
        'C. SLA [Service Level Agreement].',
        'D. SOW [Statement of Work].',
      ],
      correctAnswer: {'D. SOW [Statement of Work].'},
    ),
  ),
  QuestionModel(
    id: 55,
    question: 'While managing a project, a PM is assigned to work on a second project. The second project becomes more complex and monopolizes the PM’s time. The PM learns that a similarly time-consuming project was executed previously in the organization. Which of the following actions should the PM take?',
    answers: AnswersModel(
      id: 55,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Perform a root cause analysis.',
        'B. Organize a stakeholder meeting.',
        'C. Escalate the issue to the CCB.',
        'D. Contact the PMO for assistance.',
      ],
      correctAnswer: {'D. Contact the PMO for assistance.'},
    ),
  ),
  QuestionModel(
    id: 56,
    question: 'A Financial manager reports that several employees’ allocations from the past month appear to be 200% even though they are only assigned to a particular project. Which of the '
        'following could MOST likely be the cause of this issue?',
    answers: AnswersModel(
      id: 56,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. A project manager assigned the wrong resources.',
        'B. A project manager did not release the resources.',
        'C. A project manager did not remove the system access.',
        'D. A project manager did not provide the project sign-off.',
      ],
      correctAnswer: {'B. A project manager did not release the resources.'},
    ),
  ),
  QuestionModel(
    id: 57,
    question: 'Which of the following requires the MOST availability from the business team?',
    answers: AnswersModel(
      id: 57,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. SDLC.',
        'B. Scrum.',
        'C. PRINCE2.',
        'D. Waterfall.',
      ],
      correctAnswer: {'B. Scrum.'},
    ),
  ),
  QuestionModel(
    id: 58,
    question: 'Which of the following software programs would be BEST to use to store information related to business transactions?',
    answers: AnswersModel(
      id: 58,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Record management system.',
        'B. Customer relationship management.',
        'C. Enterprise resource planning.',
        'D. Content management system.',
      ],
      correctAnswer: {'C. Enterprise resource planning.'},
    ),
  ),
  QuestionModel(
    id: 59,
    question: 'During a status meeting, the development team reviews work and finds an unforeseen dependency on one of the critical project activities. As a result, the project will most likely be '
        'delayed. Which of the following actions should the project manager MOST likely perform?',
    answers: AnswersModel(
      id: 59,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Work with the project scheduler to update the project timeline.',
        'B. Communicate to the stakeholders about the updated timeline.',
        'C. Ask the development team to fast-track upcoming activities.',
        'D. Add two resources so the critical activities will finish on time.',
      ],
      correctAnswer: {'A. Work with the project scheduler to update the project timeline.'},
    ),
  ),
  QuestionModel(
    id: 60,
    question: 'Which of the following would be the NEXT document a project manager should update once the need to procure goods and/or services is identified?',
    answers: AnswersModel(
      id: 60,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Memorandum of understanding.',
        'B. Request for information.',
        'C. Statement of work.',
        'D. Non-disclosure agreement.',
      ],
      correctAnswer: {'C. Statement of work.'},
    ),
  ),
  QuestionModel(
    id: 61,
    question: 'A PM received feedback from the project sponsor that the resources involved in the project are unsure of their daily activities. Which of the following is the MOST effective step for the PM to take to ensure clarity within the team?',
    answers: AnswersModel(
      id: 61,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Create a list of tasks and share it with the team.',
        'B. Resend the scope of work to the team.',
        'C. Review the Gantt chart weekly with the team.',
        'D. Have the project sponsor meet with the team.',
      ],
      correctAnswer: {'A. Create a list of tasks and share it with the team.'},
    ),
  ),
  QuestionModel(
    id: 62,
    question: 'A project manager has been informed that the delivery of required IT equipment will be delayed. Which of the following is the FIRST step the project manager should take?',
    answers: AnswersModel(
      id: 62,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Make an impact assessment.',
        'B. Prepare a new purchase order.',
        'C. Select a new vendor.',
        'D. Create a risk register.',
      ],
      correctAnswer: {'A. Make an impact assessment.'},
    ),
  ),
  QuestionModel(
    id: 63,
    question: 'Which of the following BEST identifies the intent and purpose of a project closeout report?',
    answers: AnswersModel(
      id: 63,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. To provide documentation of lessons learned.',
        'B. To document variances from the initial project baseline.',
        'C. To validate that a project has been successfully completed.',
        'D. To release resources and terminate all access rights.',
      ],
      correctAnswer: {'C. To validate that a project has been successfully completed.'},
    ),
  ),
  QuestionModel(
    id: 64,
    question: 'A PM is working with stakeholders in the discovery phase and comparing the cost of the project to the cost savings the project will produce when it is complete. The output of this exercise will produce the:',
    answers: AnswersModel(
      id: 64,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. ROI [Return on Investment].',
        'B. SOW [Statement of Work].',
        'C. RFI [Request for Information].',
        'D. RFP [Request for Proposal].',
      ],
      correctAnswer: {'A. ROI [Return on Investment].'},
    ),
  ),
  QuestionModel(
    id: 65,
    question: 'A project team has just experienced an unexpected event and implemented a work-around. Which of the following documents should be used to record the event? (Choose two.)',
    answers: AnswersModel(
      id: 65,
      isMultipleChoice: true,
      points: 2,
      answers: [
        'A. Risk report.',
        'B. Defect log.',
        'C. Backlog.',
        'D. Issue log.',
        'E. Change log.',
        'F. Progress report.',
      ],
      correctAnswer: {'D. Issue log.', 'E. Change log.'},
    ),
  ),
  QuestionModel(
    id: 66,
    question: 'A project implementation partner and the project manager disagree about completed requirements. The project manager shows the project requirements as 70% complete. The implementation partner validates that all requirements were completed. Which of the following would clarify what the project implementation partner was contractually expected to complete?',
    answers: AnswersModel(
      id: 66,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. SOW [Statement of Work].',
        'B. RFI [Request for Information].',
        'C. RFQ [Request for Quotation].',
        'D. WBS [Work Breakdown Structure].',
      ],
      correctAnswer: {'A. SOW [Statement of Work].'},
    ),
  ),
  QuestionModel(
    id: 67,
    question: 'During the project initiation phase, a project team has been identified. Which of the following is the NEXT step for the project manager?',
    answers: AnswersModel(
      id: 67,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Determine budget constraints.',
        'B. Validate the business case.',
        'C. Update the project charter.',
        'D. Create a project schedule.',
      ],
      correctAnswer: {'C. Update the project charter.'},
    ),
  ),
  QuestionModel(
    id: 68,
    question: 'A key stakeholder recommends to a senior developer that a new feature be added. The new feature is not part of the current requirement documentation. Which of the following is MOST likely happening?',
    answers: AnswersModel(
      id: 68,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Scope creep.',
        'B. Collecting requirements.',
        'C. Decision-making.',
        'D. Project change.',
      ],
      correctAnswer: {'A. Scope creep.'},
    ),
  ),
  QuestionModel(
    id: 69,
    question: 'Which of the following BEST illustrates how team members with different roles should interact on the team?',
    answers: AnswersModel(
      id: 69,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. SOW [Statement of Work].',
        'B. WBS [Work Breakdown Structure].',
        'C. RACI [Responsible, Accountable, Consulted, Informed].',
        'D. PERT [Program Evaluation and Review Technique].',
      ],
      correctAnswer: {'C. RACI [Responsible, Accountable, Consulted, Informed].'},
    ),
  ),
  QuestionModel(
    id: 70,
    question: 'For an upcoming project kickoff, a PM is looking for a way to illustrate roles for major project activities. Which of the following would be the MOST useful option?',
    answers: AnswersModel(
      id: 70,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Resource plan.',
        'B. Organizational chart.',
        'C. Project charter.',
        'D. RACI chart.',
      ],
      correctAnswer: {'D. RACI chart.'},
    ),
  ),
  QuestionModel(
    id: 71,
    question: 'Defects associated with project deliverables have been reported. The project team needs to find the cause of the defects. Which of the following tools should the project team use to find the cause?',
    answers: AnswersModel(
      id: 71,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Kanban board.',
        'B. Pareto chart.',
        'C. Ishikawa diagram.',
        'D. Decision tree.',
      ],
      correctAnswer: {'C. Ishikawa diagram.'},
    ),
  ),
  QuestionModel(
    id: 72,
    question: 'A project manager needs to update the project sponsor and senior stakeholders about the progress of a project. Which of the following tools will the project manager MOST likely use?',
    answers: AnswersModel(
      id: 72,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Dashboard.',
        'B. Gantt chart.',
        'C. Work breakdown structure.',
        'D. Requirements Traceability Matrix.',
      ],
      correctAnswer: {'A. Dashboard.'},
    ),
  ),
  QuestionModel(
    id: 73,
    question: 'When creating a project schedule, a project manager adds activities with zero duration. Which of the following describes these types of activities?',
    answers: AnswersModel(
      id: 73,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Critical paths.',
        'B. Resources.',
        'C. Milestones.',
        'D. Work breakdown structures.',
      ],
      correctAnswer: {'C. Milestones.'},
    ),
  ),
  QuestionModel(
    id: 74,
    question: 'A project manager reports that the implementation of a new system is on track to be completed under budget and ahead of the schedule. A stakeholder then asks the manager to add mobile device functionality. Which of the following should the project manager do in response to the request?',
    answers: AnswersModel(
      id: 74,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Decline because it is not included in the project scope.',
        'B. Assess the impact of the request and create a change request.',
        'C. Create new functional and non-functional requirements for mobile devices.',
        'D. Revise the baseline of the project plan by adding the new requirements.',
      ],
      correctAnswer: {'B. Assess the impact of the request and create a change request.'},
    ),
  ),
  QuestionModel(
    id: 75,
    question: 'During a code implementation, a senior developer and junior tester are discussing the testing scenarios that were performed. A major malfunction resulted in an inoperative product condition. As a result, the team was forced to work until midnight to restore operations. Which of the following should the PM have generated FIRST to alleviate the impact of this issue prior to deployment?',
    answers: AnswersModel(
      id: 75,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. A risk budget.',
        'B. A risk impact.',
        'C. A change request.',
        'D. A contingency plan.',
      ],
      correctAnswer: {'D. A contingency plan.'},
    ),
  ),
  QuestionModel(
    id: 76,
    question: 'During a brainstorming meeting, a project manager identifies multiple techniques that will help the project team ensure confidence and alignment with the project scope and goals. '
        'Which of the following plans is the project manager creating?',
    answers: AnswersModel(
      id: 76,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Procurement.',
        'B. Communication.',
        'C. Quality assurance.',
        'D. Risk.',
      ],
      correctAnswer: {'C. Quality assurance.'},
    ),
  ),
  QuestionModel(
    id: 77,
    question: 'A PM learns about some communication issues with different stakeholders and team members. Which of the following should the PM do NEXT?',
    answers: AnswersModel(
      id: 77,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Escalate the communication issues.',
        'B. Implement a communication platform.',
        'C. Review the communication plan.',
        'D. Talk with the head of the PMO.',
      ],
      correctAnswer: {'C. Review the communication plan.'},
    ),
  ),
  QuestionModel(
    id: 78,
    question: 'An organization was fined due to an audit finding that revealed a third-party vendor was able to see secured project information in a recently implemented system. Which of the '
        'following was the cause of this situation?',
    answers: AnswersModel(
      id: 78,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. The ticket system provided access by default without any approval.',
        'B. The project manager did not perform proper project planning.',
        'C. The system is lacking proper access controls.',
        'D. Sensitive data was incorrectly classified during the audit process.',
      ],
      correctAnswer: {'C. The system is lacking proper access controls.'},
    ),
  ),
  QuestionModel(
    id: 79,
    question: 'An institution wants to implement software solutions to help manage the internal flow for formally responding in writing to citizens’ complaints. Which of the following solutions would be BEST?',
    answers: AnswersModel(
      id: 79,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Enterprise resource planning and end user applications.',
        'B. Electronic document and record management systems.',
        'C. Customer relationship management and databases.',
        'D. Content management and financial systems.',
      ],
      correctAnswer: {'B. Electronic document and record management systems.'},
    ),
  ),
  QuestionModel(
    id: 80,
    question: 'A system was implemented, and testing was successfully completed. Which of the following should the project manager do NEXT?',
    answers: AnswersModel(
      id: 80,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Validate against the scope statement and ask for sign-off.',
        'B. Run a control chart to ensure the quality of the deliverables.',
        'C. Review the risk register and close up residual risks.',
        'D. Start the training and handoff for the operations team.',
      ],
      correctAnswer: {'D. Start the training and handoff for the operations team.'},
    ),
  ),
  QuestionModel(
    id: 81,
    question: 'Which of the following is a test that is done on an existing system to ensure the previous functionality still works after a change has been made?',
    answers: AnswersModel(
      id: 81,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Smoke testing.',
        'B. Regression testing.',
        'C. Unit testing.',
        'D. User acceptance testing.',
      ],
      correctAnswer: {'B. Regression testing.'},
    ),
  ),
  QuestionModel(
    id: 82,
    question: 'A project team needs a tool to store information that is captured throughout the life cycle of a project. The information should be stored in a centralized location that is easily accessible to all stakeholders and will provide search functionality. Which of the following tools should be used?',
    answers: AnswersModel(
      id: 82,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Secure folder.',
        'B. Real-time, multiauthoring editing software.',
        'C. Digital whiteboard.',
        'D. Wiki knowledge base.',
      ],
      correctAnswer: {'D. Wiki knowledge base.'},
    ),
  ),
  QuestionModel(
    id: 83,
    question: 'During online, collaborative meeting sessions, a project team is consistently in consensus, which is causing a creativity roadblock. Which of the following can the facilitator do to minimize this issue?',
    answers: AnswersModel(
      id: 83,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Enable chat.',
        'B. Distribute surveys.',
        'C. Meet face to face.',
        'D. Use a whiteboard.',
      ],
      correctAnswer: {'A. Enable chat.'},
    ),
  ),
  QuestionModel(
    id: 84,
    question: 'During the project initiation phase, a PM needs to construct a project schedule and show the project dependencies. Which of the following should the PM use for this task?',
    answers: AnswersModel(
      id: 84,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Waterfall method.',
        'B. Simulation method.',
        'C. Precedence diagramming method.',
        'D. Critical path method.',
      ],
      correctAnswer: {'C. Precedence diagramming method.'},
    ),
  ),
  QuestionModel(
    id: 85,
    question: 'During an audit, a project manager finds out that a contractor exceeded the overtime hours allowed by the contract. Which of the following tools should the PM use to share the details'
        'with the management team?',
    answers: AnswersModel(
      id: 85,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Time-tracking log.',
        'B. Issue log.',
        'C. Statement of work.',
        'D. Risk register.',
      ],
      correctAnswer: {'A. Time-tracking log.'},
    ),
  ),
  QuestionModel(
    id: 86,
    question: 'A segment of a project has ended. Before moving on to the next segment, the project manager wants to assess if the work produced in the previous segment meets a high enough standard and if adequate resources are available to continue the project. Which of the following should the project manager do?',
    answers: AnswersModel(
      id: 86,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Review the progress reports.',
        'B. Perform a gap analysis.',
        'C. Coordinate a phase-gate review.',
        'D. Set up touch points with the team.',
      ],
      correctAnswer: {'C. Coordinate a phase-gate review.'},
    ),
  ),
  QuestionModel(
    id: 87,
    question: 'Which of the following can be used to determine whether a sample product is within an acceptable range?',
    answers: AnswersModel(
      id: 87,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Scatter diagram.',
        'B. Velocity chart.',
        'C. Control chart.',
        'D. Fishbone diagram.',
      ],
      correctAnswer: {'C. Control chart.'},
    ),
  ),
  QuestionModel(
    id: 88,
    question: 'A PM is evaluating whether an IaaS contract needs to be extended. When reviewing the system usage report, the PM realizes that usage is at 20% capacity. Which of the following actions should the PM take?',
    answers: AnswersModel(
      id: 88,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Continue to monitor the system performance.',
        'B. Resize the resource utilization to reflect current needs.',
        'C. Reinforce adoption over time.',
        'D. Raise an item in the issue log.',
      ],
      correctAnswer: {'B. Resize the resource utilization to reflect current needs.'},
    ),
  ),
  QuestionModel(
    id: 89,
    question: 'A company is implementing a new radar system from July to September. The project manager knows these months are the peak hurricane season for this region. Which of the following should the project manager develop to mitigate the risk to the project?',
    answers: AnswersModel(
      id: 89,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Data plan.',
        'B. Contingency plan.',
        'C. Rollback plan.',
        'D. Recovery plan.',
      ],
      correctAnswer: {'B. Contingency plan.'},
    ),
  ),
  QuestionModel(
    id: 90,
    question: 'A PM has gathered stakeholders from across various functions in the organization. The team has never worked together before. Which of the following should the PM do to ensure standards are understood?',
    answers: AnswersModel(
      id: 90,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Conduct team training.',
        'B. Present the scope statement.',
        'C. Establish meeting schedules.',
        'D. Develop a communication plan.',
      ],
      correctAnswer: {'A. Conduct team training.'},
    ),
  ),
  QuestionModel(
    id: 91,
    question: 'A PM in a matrix organizational structure has team members who do not have adequate time to dedicate to project activities. Which of the following should the PM do to improve the '
        'team members\' availability?',
    answers: AnswersModel(
      id: 91,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Require overtime for assignments.',
        'B. Conduct training on time management.',
        'C. Negotiate with functional managers.',
        'D. Recruit additional team members.',
      ],
      correctAnswer: {'C. Negotiate with functional managers.'},
    ),
  ),
  QuestionModel(
    id: 92,
    question: '''
     <p>A meeting agenda included the following items:</p>
      <p>• Review the goals of the project.</p>
      <p>• Review the progress of the project.</p>
      <p>• Discuss if the project is ready to move forward.</p>
     <p>Which of the following BEST describes this type of meeting?</p>
    ''',
    answers: AnswersModel(
      id: 92,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Stand-up.',
        'B. Monthly status.',
        'C. Gap analysis.',
        'D. Gate review.',
      ],
      correctAnswer: {'D. Gate review.'},
    ),
  ),
  QuestionModel(
    id: 93,
    question: 'A new project team started work three months ago. The team members are increasing their work productivity and are comfortable asking for help with tasks. Which of the following describes the current stage of the project team?',
    answers: AnswersModel(
      id: 93,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Performing.',
        'B. Adjourning.',
        'C. Forming.',
        'D. Norming.',
      ],
      correctAnswer: {'D. Norming.'},
    ),
  ),
  QuestionModel(
    id: 94,
    question: 'Which of the following is the BEST example of a breach of physical security?',
    answers: AnswersModel(
      id: 94,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. System user IDs being used by multiple individuals.',
        'B. Printers that do not request user authentication.',
        'C. Developers having full access to both development and production environments.',
        'D. Project documentation that is only kept on a removable device.',
      ],
      correctAnswer: {'D. Project documentation that is only kept on a removable device.'},
    ),
  ),
  QuestionModel(
    id: 95,
    question: 'Which of the following is a typical characteristic of Scrum?',
    answers: AnswersModel(
      id: 95,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Large teams.',
        'B. Low-risk scope.',
        'C. Self-organized team.',
        'D. Well-defined scope.',
      ],
      correctAnswer: {'C. Self-organized team.'},
    ),
  ),
  QuestionModel(
    id: 96,
    question: 'In the kickoff meeting, a project manager announced the project will use a tool to store documents, artifacts, and any other data relevant to the project. The tool will perform version control, maintain retention data, and archive destruction or historical information. Which of the following is being described?',
    answers: AnswersModel(
      id: 96,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Record management system.',
        'B. Project dashboard.',
        'C. Backlog.',
        'D. Wiki knowledge base.',
      ],
      correctAnswer: {'A. Record management system.'},
    ),
  ),
  QuestionModel(
    id: 97,
    question: 'Which of the following key project elements is used to organize deliverables into manageable pieces to ensure the proper steps are executed and to achieve the project\'s core '
        'objectives?',
    answers: AnswersModel(
      id: 97,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. WBS [Work Breakdown Structure].',
        'B. RACI [Responsible, Accountable, Consulted, Informed].',
        'C. RFP [Request for Proposal].',
        'D. PERT [Program Evaluation and Review Technique].',
      ],
      correctAnswer: {'A. WBS [Work Breakdown Structure].'},
    ),
  ),
  QuestionModel(
    id: 98,
    question: 'After a meeting, a team member recaps all of the topics that worked well, worked relatively well, and did not work at all. The expectation is for upcoming project work to make better progress and achieve targets. Which of the following combinations of tactics is being used?',
    answers: AnswersModel(
      id: 98,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Stand-up meeting, action items.',
        'B. Workshop meeting, timeboxing.',
        'C. Status meeting, follow-ups.',
        'D. Presentation meeting, meeting notes.',
      ],
      correctAnswer: {'A. Stand-up meeting, action items.'},
    ),
  ),
  QuestionModel(
    id: 99,
    question: 'In the middle of a five-year project, a vendor asked the buyer to revisit the rate card associated with the development team. According to the vendor, the development team\'s '
        'experience and technical skills have increased since the project started. Which of the following documents should the buyer review FIRST?',
    answers: AnswersModel(
      id: 99,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. MOU [Memorandum of Understanding].',
        'B. SOW [Statement of Work].',
        'C. RFP [Request for Proposal].',
        'D. RFI [Request for Information].',
      ],
      correctAnswer: {'B. SOW [Statement of Work].'},
    ),
  ),
  QuestionModel(
    id: 100,
    question: 'A project plan included budgeted funding to set up only a specified number of workstations. A department manager asked a project manager to set up additional workstations just in '
        'case the workstations are needed in the future. Which of the following should the project manager do?',
    answers: AnswersModel(
      id: 100,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Ask the sponsor for additional funding to accommodate the request.',
        'B. Escalate the request to the senior management team.',
        'C. Advise that a change request would need to be approved.',
        'D. Instruct the project team to set up the additional workstations.',
      ],
      correctAnswer: {'C. Advise that a change request would need to be approved.'},
    ),
  ),
  QuestionModel(
    id: 101,
    question: 'During a demonstration, the product owner asked the team to add new scope to the backlog. Which of the following should the Scrum master do NEXT?',
    answers: AnswersModel(
      id: 101,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Create a change request for the change advisory board.',
        'B. Work with the business analyst to document the new epic.',
        'C. Reject the change to prevent scope creep.',
        'D. Update the risk register and the work in the mitigation plan.',
      ],
      correctAnswer: {'B. Work with the business analyst to document the new epic.'},
    ),
  ),
  QuestionModel(
    id: 102,
    question: 'Project A and Project B share a team member. The team member is falling behind on a task for Project B. Which of the following is the BEST action to take to get the task for Project B back on track?',
    answers: AnswersModel(
      id: 102,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Negotiate to get more of the team member\'s available time.',
        'B. Assign the team member to work overtime to finish the task.',
        'C. Speed up completion of the task by assisting the team member.',
        'D. Have the project manager complete the task.',
      ],
      correctAnswer: {'C. Speed up completion of the task by assisting the team member.'},
    ),
  ),
  QuestionModel(
    id: 103,
    question: 'A portfolio manager needs to provide the senior management team with a dynamic, high-level, monthly status update on all active projects in the portfolio. Which of the following should the manager use to accomplish this task?',
    answers: AnswersModel(
      id: 103,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Dashboard.',
        'B. Status report.',
        'C. Gantt chart.',
        'D. Email.',
      ],
      correctAnswer: {'A. Dashboard.'},
    ),
  ),
  QuestionModel(
    id: 104,
    question: 'A project manager has been assigned to a project that involves replacing key operational equipment. The project manager is new to the industry and has learned that compliance requirements must be met. Which of the following should the project manager do FIRST?',
    answers: AnswersModel(
      id: 104,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Trust that the project requirements fully document the necessary compliances.',
        'B. Meet with the end users to learn more about the compliance requirements.',
        'C. Research the compliance requirements related to the project to understand the implications.',
        'D. Make the QA specialist responsible for ensuring that the compliance requirements are met.',
      ],
      correctAnswer: {'C. Research the compliance requirements related to the project to understand the implications.'},
    ),
  ),
  QuestionModel(
    id: 105,
    question: 'Two team members have a minor disagreement on how a task should be performed. The project manager plans to meet with the team members to discuss the matter. Which of the following techniques should the project manager use to emphasize the areas of agreement and downplay the opposing views?',
    answers: AnswersModel(
      id: 105,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Compromising.',
        'B. Forcing.',
        'C. Smoothing.',
        'D. Collaborating.',
      ],
      correctAnswer: {'C. Smoothing.'},
    ),
  ),
  QuestionModel(
    id: 106,
    question: 'A project manager is assigned to a large, complex project that is very new to the organization. Because of huge expenditures, the project cannot be cancelled after it starts. Which of the following is most important for the project manager to do FIRST?',
    answers: AnswersModel(
      id: 106,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Carefully select the vendor.',
        'B. Identify and evaluate risks.',
        'C. Establish change management procedures.',
        'D. Evaluate the resource pool.',
      ],
      correctAnswer: {'B. Identify and evaluate risks.'},
    ),
  ),
  QuestionModel(
    id: 107,
    question: 'As a result of an approved change request, the project manager updates the project plan to reflect the new feature addition and the revised production release date. Which of the '
        'following change control processes should the project manager do NEXT?',
    answers: AnswersModel(
      id: 107,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Validate the change implementation.',
        'B. Implement the change.',
        'C. Conduct an impact assessment.',
        'D. Communicate the change deployment.',
      ],
      correctAnswer: {'D. Communicate the change deployment.'},
    ),
  ),
  QuestionModel(
    id: 108,
    question: 'A project manager is discussing with team members sensitive project information that should not be disclosed outside of the office. Which of the following BEST describes this type of information?',
    answers: AnswersModel(
      id: 108,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Intellectual property.',
        'B. Marketing.',
        'C. Trade secret.',
        'D. Top secret.',
      ],
      correctAnswer: {'C. Trade secret.'},
    ),
  ),
  QuestionModel(
    id: 109,
    question: 'Which of the following would be the MOST beneficial to determine whether a project has met the defined objectives?',
    answers: AnswersModel(
      id: 109,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Schedule variance.',
        'B. Cost variance.',
        'C. Work breakdown structure.',
        'D. Key performance indicators.',
      ],
      correctAnswer: {'D. Key performance indicators.'},
    ),
  ),
  QuestionModel(
    id: 110,
    question: 'A project manager is working on a project charter and has successfully documented the project objectives and the success criteria. Which of the following should the project manager '
        'define NEXT to complete the project charter?',
    answers: AnswersModel(
      id: 110,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Proposed solution design.',
        'B. Preliminary scope statement.',
        'C. Responsibility assignment matrix.',
        'D. Initial budget baseline.',
      ],
      correctAnswer: {'B. Preliminary scope statement.'},
    ),
  ),
  QuestionModel(
    id: 111,
    question: 'A project has been initiated to provide insurance forms for a company. A constraint for this project is that the insurance commission in each state where the company underwrites has to approve each form. Which of the following compliance considerations BEST describes this scenario?',
    answers: AnswersModel(
      id: 111,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Regulatory impacts.',
        'B. Environmental impacts.',
        'C. Organizational impacts.',
        'D. Sensitive data types.',
      ],
      correctAnswer: {'A. Regulatory impacts.'},
    ),
  ),
  QuestionModel(
    id: 112,
    question: 'During the execution of production for a bike, a PM was hired. One month later, the PM has been receiving multiple project report requests from stakeholders. Which of the following should the PM do FIRST?',
    answers: AnswersModel(
      id: 112,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Discuss the requests with the sponsor.',
        'B. Prepare and send the information.',
        'C. Assign this task to the project team.',
        'D. Review the communication plan.',
      ],
      correctAnswer: {'D. Review the communication plan.'},
    ),
  ),
  QuestionModel(
    id: 113,
    question: 'A team member finds a malfunctioning procedure in the system that will take a considerable amount of time to fix. Which of the following should be done FIRST?',
    answers: AnswersModel(
      id: 113,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Update the risk register.',
        'B. Document the finding in the change log.',
        'C. Create a record in the issue log.',
        'D. Detail a proposed solution.',
      ],
      correctAnswer: {'C. Create a record in the issue log.'},
    ),
  ),
  QuestionModel(
    id: 114,
    question: 'A project team has identified a bug during user acceptance testing. Which of the following is the BEST method for communicating that bug to the development team?',
    answers: AnswersModel(
      id: 114,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Call the development lead to discuss the fixes for the bug.',
        'B. Include the bug issue as part of the status update for stakeholders.',
        'C. Issue a change request.',
        'D. Add the bug issue to the project\'s risk register.',
      ],
      correctAnswer: {'C. Issue a change request.'},
    ),
  ),
  QuestionModel(
    id: 115,
    question: 'Internal project team members and a subject matter expert had a heated discussion about the client\'s needs. The deliverable is now at risk of being delayed. Which of the following '
        'should be notified LAST?',
    answers: AnswersModel(
      id: 115,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Program manager.',
        'B. End user.',
        'C. Steering committee.',
        'D. Project sponsor.',
      ],
      correctAnswer: {'B. End user.'},
    ),
  ),
  QuestionModel(
    id: 116,
    question: 'Which of the following methodologies/frameworks should be used when incremental value is expected in a timeboxed period?',
    answers: AnswersModel(
      id: 116,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. PRINCE2.',
        'B. Waterfall.',
        'C. Scrum.',
        'D. SLDC.',
      ],
      correctAnswer: {'C. Scrum.'},
    ),
  ),
  QuestionModel(
    id: 117,
    question: 'A project manager has just finished overseeing the implementation of a new, self-service benefits enrollment system. Many employees, however, are calling the human resources team for'
        ' assistance instead of using the self-service system. Which of the following should the project manager have done as part of the execution plan?',
    answers: AnswersModel(
      id: 117,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Establish a minimally viable product.',
        'B. Prepare new knowledge base documentation.',
        'C. Update the project baseline and schedule.',
        'D. Periodically review vendor performance.',
      ],
      correctAnswer: {'C. Update the project baseline and schedule.'},
    ),
  ),
  QuestionModel(
    id: 118,
    question: 'Which of the following methods frequently delivers new code in an automatic way for development projects?',
    answers: AnswersModel(
      id: 118,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Automated testing.',
        'B. CI/CD process.',
        'C. Validation checks.',
        'D. Deploy sprint.',
      ],
      correctAnswer: {'B. CI/CD process.'},
    ),
  ),
  QuestionModel(
    id: 119,
    question: 'When trying to calculate the expected monetary value for using a particular vendor, which of the following charts would be BEST to use?',
    answers: AnswersModel(
      id: 119,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Decision tree.',
        'B. Fishbone.',
        'C. Histogram.',
        'D. Pareto.',
      ],
      correctAnswer: {'A. Decision tree.'},
    ),
  ),
  QuestionModel(
    id: 120,
    question: 'Two projects share resources. The mobile application project cannot start if the database renewal project has not started. Which of the following relationships describes this situation?',
    answers: AnswersModel(
      id: 120,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Start-to-finish.',
        'B. Start-to-start.',
        'C. Finish-to-start.',
        'D. Finish-to-finish.',
      ],
      correctAnswer: {'B. Start-to-start.'},
    ),
  ),
  QuestionModel(
    id: 121,
    question: 'Which of the following is a consideration when determining a project\'s ESG factors?',
    answers: AnswersModel(
      id: 121,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Project management methodology.',
        'B. IT infrastructure security.',
        'C. Proper accounting practices.',
        'D. Corporate values compliance.',
      ],
      correctAnswer: {'D. Corporate values compliance.'},
    ),
  ),
  QuestionModel(
    id: 122,
    question: 'In an agenda for a kickoff meeting, some time is set aside to complete a document that identifies each member of the project, the members\' roles and responsibilities for tasks, the '
        'milestones, and the key decisions. In which of the following should this data be documented?',
    answers: AnswersModel(
      id: 122,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. TOR [Terms of Reference].',
        'B. WBS [Work Breakdown Structure].',
        'C. RAM [Responsibility Assignment Matrix].',
        'D. SOW [Statement of Work].',
      ],
      correctAnswer: {'C. RAM [Responsibility Assignment Matrix].'},
    ),
  ),
  QuestionModel(
    id: 123,
    question: 'During a project sprint, an analyst explains multiple situations the team encountered after the previous day\'s sessions. The analyst then lists the tasks that need to be completed '
        'before the end of the day. Which of the following meeting types is the team utilizing?',
    answers: AnswersModel(
      id: 123,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Stand-up meeting.',
        'B. Workshop meeting.',
        'C. Kick-off meeting.',
        'D. Presentation meeting.',
      ],
      correctAnswer: {'A. Stand-up meeting.'},
    ),
  ),
  QuestionModel(
    id: 124,
    question: 'A project manager reviews the watch list and notices the probability of occurrence has increased for one item listed in this document; consequently, frequent monitoring is required. Which of the following tools should the project manager update NEXT?',
    answers: AnswersModel(
      id: 124,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Defect log.',
        'B. Stakeholder register.',
        'C. Issue log.',
        'D. Risk register.',
      ],
      correctAnswer: {'D. Risk register.'},
    ),
  ),
  QuestionModel(
    id: 125,
    question: 'Which of the following IT elements allows developers to leverage existing code to integrate with other software systems?',
    answers: AnswersModel(
      id: 125,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. SaaS.',
        'B. API.',
        'C. Databases.',
        'D. End user applications.',
      ],
      correctAnswer: {'B. API.'},
    ),
  ),
  QuestionModel(
    id: 126,
    question: 'A stakeholder notices a typo in the project management plan, specifically the word manager was spelled “manger”. Which of the following is the decision maker who can authorize the '
        'change so the correction can be made?',
    answers: AnswersModel(
      id: 126,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. PM.',
        'B. CCB.',
        'C. Sponsor.',
        'D. Business analyst.',
      ],
      correctAnswer: {'A. PM.'},
    ),
  ),
  QuestionModel(
    id: 127,
    question: 'A PM is working on the preliminary scope statement and identifies that this project has the same approach as another project that was completed last year. Which of the following '
        'actions would the PM MOST likely perform?',
    answers: AnswersModel(
      id: 127,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Call the previous PM for advice on risks and issues.',
        'B. Ask the project sponsor to provide previous final project report results.',
        'C. Complete the project charter using the other PM\'s subject matter expertise.',
        'D. Use existing artifacts and accommodate based on the current project success criteria.',
      ],
      correctAnswer: {'D. Use existing artifacts and accommodate based on the current project success criteria.'},
    ),
  ),
  QuestionModel(
    id: 128,
    question: 'A developer focused on a single story during an entire sprint. The story was underestimated and, therefore, was not completed. Which of the following steps should the Scrum team take NEXT?',
    answers: AnswersModel(
      id: 128,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Assign more resources to complete similar stories in the future.',
        'B. Break the stories into workable items that can be completed within one sprint.',
        'C. Extend the sprint duration when required with the approval of the product owner.',
        'D. Release the current progress into production and carry over the rest of the code for the next sprint.',
      ],
      correctAnswer: {'B. Break the stories into workable items that can be completed within one sprint.'},
    ),
  ),
  QuestionModel(
    id: 129,
    question: 'During the planning phase, a project manager held a meeting to discuss meeting days, meeting times, meeting frequency, and tools to use. Which of the following will the project manager use to document this data?',
    answers: AnswersModel(
      id: 129,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Project communication plan.',
        'B. Project charter.',
        'C. Project management plan.',
        'D. Project plan.',
      ],
      correctAnswer: {'A. Project communication plan.'},
    ),
  ),
  QuestionModel(
    id: 130,
    question: 'During the course of a project, an unexpected event occurs that could ultimately benefit the company. Which of the following is the company employing if the company decides to take '
        'advantage of this opportunity?',
    answers: AnswersModel(
      id: 130,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Exploit.',
        'B. Enhance.',
        'C. Accept.',
        'D. Mitigate.',
      ],
      correctAnswer: {'A. Exploit.'},
    ),
  ),
  QuestionModel(
    id: 131,
    question: 'A critical piece of equipment that is needed for the installation of a point-of-sale solution is delayed from the manufacturer. The delay will cause the project to be significantly '
        'behind schedule. The project manager decides to buy the item at a higher cost from another vendor who can supply it immediately. Which of the following risk management approaches has the project manager taken?',
    answers: AnswersModel(
      id: 131,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Mitigate.',
        'B. Transfer.',
        'C. Accept.',
        'D. Share.',
      ],
      correctAnswer: {'B. Transfer.'},
    ),
  ),
  QuestionModel(
    id: 132,
    question: 'Testing has been completed, and the new system is loaded in production and ready to be activated. Which of the following needs approval from the project sponsor?',
    answers: AnswersModel(
      id: 132,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Project charter.',
        'B. Deployment plan.',
        'C. Business case.',
        'D. Release schedule.',
      ],
      correctAnswer: {'D. Release schedule.'},
    ),
  ),
  QuestionModel(
    id: 133,
    question: 'A project sponsor is notified that the committed turnaround time has been exceeded. The team member assigned to this item stated that the support of the management team was requested'
        ' on time. Which of the following documents should be reviewed to understand the root cause of this situation?',
    answers: AnswersModel(
      id: 133,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. RACI [Responsible, Accountable, Consulted, Informed].',
        'B. SOW [Statement of Work].',
        'C. Escalation path.',
        'D. Communication plan.',
      ],
      correctAnswer: {'C. Escalation path.'},
    ),
  ),
  QuestionModel(
    id: 134,
    question: 'During the kickoff meeting, a stakeholder raises a concern that an assigned responsibility is outside of the stakeholder\'s domain. Which of the following would MOST likely be the '
        'reason?',
    answers: AnswersModel(
      id: 134,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. The communication plan is outdated.',
        'B. The project manager did not assess the stakeholders.',
        'C. The project manager did not update the risk register.',
        'D. The statement of work does not reflect the impacted stakeholders.',
      ],
      correctAnswer: {'B. The project manager did not assess the stakeholders.'},
    ),
  ),
  QuestionModel(
    id: 135,
    question: 'The project kickoff concluded, and the sponsor indicated that the recently hired summer interns are authorized to work on the project. Which of the following should the project manager do NEXT?',
    answers: AnswersModel(
      id: 135,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Host a risk workshop with all stakeholders to complete an initial risk assessment.',
        'B. Work with the interns to develop a work breakdown structure and project schedule.',
        'C. Conduct a skills assessment to determine the strengths and weaknesses of the staff.',
        'D. Assign the resources to project tasks and encourage them to begin work immediately.',
      ],
      correctAnswer: {'C. Conduct a skills assessment to determine the strengths and weaknesses of the staff.'},
    ),
  ),
  QuestionModel(
    id: 136,
    question: 'A project team is working remotely from different locations across the country. As part of a lessons-learned exercise, the project manager would like to identify the level of engagement among project team members. Which of the following would be the BEST tool for the project manager to use?',
    answers: AnswersModel(
      id: 136,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Meeting chat.',
        'B. Email.',
        'C. Real-time survey.',
        'D. Whiteboard.',
      ],
      correctAnswer: {'C. Real-time survey.'},
    ),
  ),
  QuestionModel(
    id: 137,
    question: 'While defining technical requirements, the development team requested a tiered architecture setup. Which of the following types of environments BEST describes this architecture?',
    answers: AnswersModel(
      id: 137,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Security environment.',
        'B. Network environment.',
        'C. Release environment.',
        'D. Stage environment.',
      ],
      correctAnswer: {'B. Network environment.'},
    ),
  ),
  QuestionModel(
    id: 138,
    question: 'A project manager reviews a new project charter and notices that the project objective is similar to a project that was done in the past. Which of the following actions should the project manager take?',
    answers: AnswersModel(
      id: 138,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Review the existing artifacts and customize accordingly.',
        'B. Utilize the existing artifacts to manage the project.',
        'C. Ask the previous project manager for advice.',
        'D. Notify the sponsor that this project duplicates a prior project.',
      ],
      correctAnswer: {'A. Review the existing artifacts and customize accordingly.'},
    ),
  ),
  QuestionModel(
    id: 139,
    question: 'Which of the following is a web template that is used to create websites?',
    answers: AnswersModel(
      id: 139,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. ERP [Enterprise Resource Planning].',
        'B. CRM [Customer Relationship Management].',
        'C. EDRMS [Electronic Document and Records Management System].',
        'D. CMS [Content Management System].',
      ],
      correctAnswer: {'D. CMS [Content Management System].'},
    ),
  ),
  QuestionModel(
    id: 140,
    question: 'After a product is released for production, a tester performs a test to ensure its basic functionality is working as expected. Which of the following is the tester performing?',
    answers: AnswersModel(
      id: 140,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Smoke test.',
        'B. Stress test.',
        'C. Penetration test.',
        'D. Regression test.',
      ],
      correctAnswer: {'A. Smoke test.'},
    ),
  ),
  QuestionModel(
    id: 141,
    question: 'A project manager is performing planning tasks for a complex project at a small company. Which of the following items would be of GREATEST importance during planning?',
    answers: AnswersModel(
      id: 141,
      isMultipleChoice: false,
      points: 1,
      answers: [
        'A. Defining the project objectives, scope, and success criteria.',
        'B. Assessing the resources available for operational support after project implementation.',
        'C. Providing updates and status reports to the project owner and stakeholders.',
        'D. Developing a records management plan and reviewing existing project artifacts.',
      ],
      correctAnswer: {'A. Defining the project objectives, scope, and success criteria.'},
    ),
  ),
];