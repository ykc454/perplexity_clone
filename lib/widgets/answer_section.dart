import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  String fullResponse = '''
  The latest clearly indexed **India vs Australia** score I found is from the **ICC Champions Trophy 2025 semifinal**:

  ## Match result

  | Team | Score |
  |---|---:|
  | Australia | 264 all out in 49.3 overs |
  | India | 267/6 in 48.1 overs |

  **India won by 4 wickets** and reached the Champions Trophy final. India chased Australia’s target with 11 balls remaining. [cricbuzz](https://www.cricbuzz.com/live-cricket-scores/112462/ind-vs-aus-1st-semi-final-a1-v-b2-icc-champions-trophy-2025)

  ## Match details

  - **Australia:** 264 all out in 49.3 overs.
  - **India:** 267/6 in 48.1 overs.
  - **Result:** India won by 4 wickets.
  - **India’s required target:** 265 runs.
  - **Winning contribution:** KL Rahul scored 42 runs from 34 balls, while Ravindra Jadeja was unbeaten on 2 from 1 ball when India completed the chase. [cricbuzz](https://www.cricbuzz.com/live-cricket-scores/112462/ind-vs-aus-1st-semi-final-a1-v-b2-icc-champions-trophy-2025)

  There are multiple India–Australia matches across men’s, women’s, ODI, T20 and World Cup competitions. If you mean a **live match being played today**, tell me the tournament or whether it is **India men, India women, ODI, Test, or T20**, and I can identify the exact score.
  ''';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'perplexity',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16,),
        Markdown(
            data: fullResponse,
            shrinkWrap: true,
        ),
      ],
    );
  }
}



























