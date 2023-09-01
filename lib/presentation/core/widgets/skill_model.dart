import 'package:elvissalabarria_portfolio/presentation/core/data/skill.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillWidget extends StatelessWidget {
  final Skill skill;
  const SkillWidget({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.height * 0.1,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: const Color(0xfff3f3f3), width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                  ),child: Image.asset(
              skill.image,
              width: MediaQuery.of(context).size.width *0.04,
              height: MediaQuery.of(context).size.width *0.04,
            ),
                  ),
            Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              softWrap: true,
              skill.porcent,
              style: GoogleFonts.notoSerif(
                textStyle: const TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
        Text(
          skill.name,
          overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: true,
          style: GoogleFonts.notoSerif(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
