import 'package:elvissalabarria_portfolio/presentation/core/data/pages.dart';
import 'package:elvissalabarria_portfolio/presentation/core/widgets/skill_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'My Skills',
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
         child: 
        ListView.builder(
          itemCount:skills.length ,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SkillWidget(skill: skills[index]),
            );
          },
        
        ),
        ),
      ],
    );
  }
}
