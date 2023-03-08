import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/widgets/time_lines_widgets.dart';

class PersonalSummaryWidgetMobile extends StatelessWidget {
  const PersonalSummaryWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
      child: SizedBox(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SERVICES',
                      style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 10,
                      )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Software Architect',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Mobile Application Developer',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                          ),
                        )),
                    const SizedBox(
                      height: 35,
                    ),
                    Text('CONTACT',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 10,
                          ),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'elvis.salabarria.3@gmail.com',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: const VerticalDivider(
                      color: Colors.black26,
                      width: 0.7,
                      thickness: 0.5,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Text('6',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                        )),
                    const SizedBox(
                      height: 35,
                    ),
                    Text('SATISFACTION CLIENT',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 12,
                          ),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('100%',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text('PROJECTS EXPERIENCE TIME LINE 6 YEARS',
                style: GoogleFonts.notoSerif(
                  textStyle: const TextStyle(
                    color: Colors.black45,
                    fontSize: 12,
                  ),
                )),
            const TimeLinesWidget()
          ],
        ),
      ),
    );
  }
}
