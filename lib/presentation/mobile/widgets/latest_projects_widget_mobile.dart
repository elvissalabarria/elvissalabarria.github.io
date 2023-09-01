import 'package:elvissalabarria_portfolio/presentation/core/data/pages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LatestProjectWidgetMobile extends StatefulWidget {
  const LatestProjectWidgetMobile({Key? key}) : super(key: key);

  @override
  State<LatestProjectWidgetMobile> createState() =>
      _LatestProjectWidgetMobileState();
}

class _LatestProjectWidgetMobileState extends State<LatestProjectWidgetMobile> {
  final controller =
      PageController(viewportFraction: 0.5, keepPage: true, initialPage: 1);

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
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      const   SizedBox(
          height: 10,
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                  itemCount: pages.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(child: pages[index % pages.length]),
                              const SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
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
        ),
        //  SizedBox(
        //     height: MediaQuery.of(context).size.height * 0.5,
        //   //  child: ListView.builder(
        //   //   itemCount: pages.length,
        //   //   shrinkWrap: true,
        //   //   itemBuilder: (_, index) {
        //   //     return Padding(
        //   //       padding: const EdgeInsets.all(8.0),
        //   //       child: pages[index % pages.length],
        //   //     );
        //   //   },
        //   //          ),
        //  ),
      ],
    );
  }
}
