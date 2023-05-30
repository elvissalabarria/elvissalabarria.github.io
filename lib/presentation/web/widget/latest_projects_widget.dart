import 'package:elvissalabarria_portfolio/presentation/core/data/pages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'card_project_widget.dart';

class LatestProjectWidget extends StatefulWidget {
  const LatestProjectWidget({Key? key}) : super(key: key);

  @override
  State<LatestProjectWidget> createState() => _LatestProjectWidgetState();
}

class _LatestProjectWidgetState extends State<LatestProjectWidget> {
  final controller =
      PageController(viewportFraction: 0.3, keepPage: true, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'My Latest Projects',
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
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.4,
          child: ListView.builder(
            itemCount: pages.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: pages[index % pages.length],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: const JumpingDotEffect(
              dotHeight: 16,
              dotWidth: 16,
              jumpScale: .7,
              verticalOffset: 15,
              dotColor: Color(0xff484848),
              activeDotColor: Color(0xff333333),
            ),
          ),
        ),
      ],
    );
  }
}
