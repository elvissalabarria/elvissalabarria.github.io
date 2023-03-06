import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dart:html' as html;

import 'package:google_fonts/google_fonts.dart';

class MenuWidgetMobile extends StatefulWidget {
  final ScrollController scrollController;
  const MenuWidgetMobile({Key? key, required this.scrollController})
      : super(key: key);

  @override
  State<MenuWidgetMobile> createState() => _MenuWidgetMobileState();
}

class _MenuWidgetMobileState extends State<MenuWidgetMobile> {
  // Define the function that scroll to an item
  void _scrollToIndex() {
    widget.scrollController.animateTo(1400,
        duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: ListView(children: [
          Image.asset(
            'assets/logos/logo.png',
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () {
                  setState(() {
                    _scrollToIndex();
                  });
                },
                icon: const FaIcon(
                  FontAwesomeIcons.briefcase,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Latest Projects',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => html.window
                    .open('https://github.com/elvissalabarria', "_blank"),
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Follow me Github',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: TextButton.icon(
          //       onPressed: () => html.window
          //           .open('https://twitter.com/4l3j4ndr09212', "_blank"),
          //       icon: const FaIcon(
          //         FontAwesomeIcons.twitter,
          //         color: Colors.black45,
          //         size: 14,
          //       ),
          //       label: Text(
          //         'Follow me Twitter',
          //         style: GoogleFonts.notoSerif(
          //           textStyle:
          //               const TextStyle(color: Colors.black45, fontSize: 16),
          //         ),
          //       )),
          // ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => html.window.open(
                    'https://www.linkedin.com/in/elvis-salabarria-aquino-279001112/',
                    "_blank"),
                icon: const FaIcon(
                  FontAwesomeIcons.linkedinIn,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Follow me Linkedin',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => html.window.open(
                    'https://stackoverflow.com/users/12276511/elvis-salabarria-aquino',
                    "_blank"),
                icon: const FaIcon(
                  FontAwesomeIcons.stackOverflow,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Follow me Stackoverflow',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topLeft,
            child: TextButton.icon(
                onPressed: () => html.window.open(
                    'https://docs.google.com/document/d/1ALR7dO7-VHlY5wHJpjiRXXCfda8SPNEdDibp7gCawP0/edit?usp=sharing',
                    "_blank"),
                icon: const FaIcon(
                  FontAwesomeIcons.fileArrowDown,
                  color: Colors.black45,
                  size: 14,
                ),
                label: Text(
                  'Download CV.',
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
