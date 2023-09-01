import 'package:elvissalabarria_portfolio/presentation/core/data/experiences.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeLinesWidget extends StatelessWidget {
  const TimeLinesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.2,
        child: ListView.builder(
          itemCount: experiences.length,
          shrinkWrap: true,
          itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.01,
                  height: MediaQuery.of(context).size.height * 0.01,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 5),
                Flexible(
                  child: Text(
                    experiences[index].titleExperience,
                    style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },),
      ),
    );
  }
}
