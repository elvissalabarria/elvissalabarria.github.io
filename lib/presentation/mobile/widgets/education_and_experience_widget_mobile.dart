import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationAndExperienceWidgetMobile extends StatelessWidget {
  const EducationAndExperienceWidgetMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
      child: Column(
        children: [
          Text('Education and Experience',
              style: GoogleFonts.notoSerif(
                textStyle: const TextStyle(
                  color: Colors.black87,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Text('2012-2017',
                        style: GoogleFonts.notoSerif(
                          textStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 12,
                          ),
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Software Engineer',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      'University of Informatic Sciences (UCI)',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                        ),
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Text(
                      '2017-2020',
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
                      'Developer of DroiLab',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      'Center of free solutions (CESOL)',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                        ),
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Teaching postgraduate courses about Mobile Tech',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      'Center of free solutions (CESOL)',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                        ),
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      'University of Informatic Sciences (UCI)',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                        ),
                      ),
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Text(
                      '2021-Current',
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
                      'Fronted developer of Intellisys D. Corp',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Freelancer',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      'By my own',
                      style: GoogleFonts.notoSerif(
                        textStyle: const TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
           
            ],
          ),
        ],
      ),
    );
  }
}
