import 'package:google_fonts/google_fonts.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../../core/widgets/time_lines_widgets.dart';
import 'package:flutter/material.dart';

class PersonalSummaryWidget extends StatelessWidget {
  const PersonalSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Text(
                  'Bibliography',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'I am a passionate software developer who enjoys spending countless hours programming. 💡 I have an entrepreneurial spirit and I love learning new technologies',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                  softWrap: true,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'CONTACT',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'elvis.salabarria.3@gmail.com',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'SERVICES',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Software Architect',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Mobile Application Developer',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black12, width: 0.5),
              borderRadius: const BorderRadius.all(Radius.circular(130)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(120)),
              child: Image.network(
                'https://avatars.githubusercontent.com/u/46904863?v=4',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.44,
                width: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Text(
                  'YEARS OF\n EXPERIENCE',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '6',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'SATISFACTION CLIENT',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '100%',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'PROJECTS EXPERIENCE TIME LINE 6 YEARS',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black45,
                      fontSize: 12,
                    ),
                  ),
                ),
                const TimeLinesWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
