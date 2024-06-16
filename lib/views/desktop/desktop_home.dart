import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Active meeting",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisSize: MainAxisSize.max,
                          verticalDirection: VerticalDirection.down,
                          children: [
                            const Text(
                              "Previous meeting",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500
                            ),
                            ),
                            const SizedBox(height: 10,),
                              ...List.generate(
                                10, 
                                (index) => Expanded(
                                  child: SingleChildScrollView(
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        color: Colors.grey.shade200,
                                        width: MediaQuery.of(context).size.width * .15,
                                        child:const Padding(
                                          padding:  EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 16,
                                        ),
                                      child: Text(
                                        "Rec00-06-12-2024"
                                       ),
                                      ),
                                    ),
                                    ),
                                  ),
                                )
                            )                    
                          ],
                                       ),
                       ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.09,
                      ),
                      Container(
                        width: 1,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .65,
                        child: Lottie.asset(
                          'assets/animation.json',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        // flex: 5,
                        child: Container()                 
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade700
                              ),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.pause
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade700
                              ),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.stop,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container()                 
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [                
                      Container(
                        width: 1,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.black54,
                      ),
                       Column(
                         children: [
                          const Text(
                            "Meeting in progress",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500
                          ),
                          ),
                           SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                             child: SingleChildScrollView(
                               child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AnimatedTextKit(
                                  totalRepeatCount: 1,
                                  repeatForever: false,
                                  animatedTexts: [
                                    TypewriterAnimatedText(
                                                      """
                              Meeting Summary:
                              
                              [00:01 - 00:05] Introductions
                              
                              Sarah Jones opens the meeting by welcoming everyone and introducing the meeting objectives.
                              
                              [00:05 - 00:15] Current Challenges with Meeting Recordings
                              
                              Maria Garcia highlights the current challenges with managing meeting recordings:
                              
                              Difficulty in searching for specific information within recordings.
                              Time-consuming process of manually taking notes during meetings.
                              Inaccessibility of meeting content for those who couldn't attend.
                              [00:15 - 00:30] Potential of AI Text Transcription
                              
                              David Li explains how AI text transcription can address these challenges by:
                              
                              Automatically converting audio recordings into text documents.
                              Enabling easy search for keywords and topics within transcripts.
                              Improving accessibility by providing written summaries of meetings.
                              [00:30 - 01:00] Exploring AI Text Transcription Solutions
                              
                              David presents different AI text transcription solutions available, including:
                              
                              Cloud-based services (e.g., Google Speech-to-Text, Amazon Transcribe)
                              On-premise software solutions
                              Open-source toolkits
                              [01:00 - 01:15]  Use Cases for AI Text Transcription
                              
                              The team brainstorms potential use cases for AI text transcription within the company, such as:
                              
                              Generating transcripts for internal and client meetings.
                              Creating searchable archives of past meetings.
                              Improving the efficiency of meeting follow-up.
                              Supporting accessibility for hearing-impaired employees.
                              [01:15 - 01:30]  Next Steps
                              
                              Sarah outlines the next steps:
                              
                              David will conduct a trial of different AI text transcription solutions.
                              The team will evaluate the accuracy and usability of the solutions.
                              A cost-benefit analysis will be conducted to determine the best solution for the company.
                              [01:30 - 01:35] Action Items
                              
                              David: Research and trial different AI text transcription solutions (by June 20)
                              Maria: Gather feedback from team members on their needs for meeting transcripts (by June 27)
                              [01:35 - 01:40] Closing Remarks
                              
                              Sarah thanks everyone for their participation and closes the meeting.
                             """,
                                        cursor: "_!",
                                      speed: const Duration(milliseconds: 65),
                                      textAlign: TextAlign.left,
                                      textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade700,
                                      )
                                    ),
                                  ],
                                ),
                                               ),
                             ),
                           ),
                         ],
                       ),                
                    ],
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