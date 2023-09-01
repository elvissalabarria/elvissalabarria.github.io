
// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;

import 'package:elvissalabarria_portfolio/presentation/mobile/widgets/latest_projects_widget_mobile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/about_me_widget.dart';
import '../widget/education_and_experience_widget.dart';
import '../widget/personal_summary_widget.dart';
import '../widget/skills_widget.dart';
import '../widget/tools_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();

  // Define the function that scroll to an item
  void _scrollToIndex(String workOrContact) {
    workOrContact == 'contact'
        ? _scrollController.animateTo(200,
            duration: const Duration(milliseconds: 800), curve: Curves.easeIn)
        : _scrollController.animateTo(1400,
            duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: MediaQuery.of(context).size.width * 0.4,
        leading: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _scrollToIndex('work');
                  });
                },
                child: Text('Works',
                    style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                        color: Colors.black87,
                      ),
                    )),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _scrollToIndex('contact');
                });
              },
              child: Text('Contact',
                  style: GoogleFonts.notoSerif(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                    ),
                  )),
            ),
          ],
        ),
        title: Image.asset(
          'assets/logos/logo.png',
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        centerTitle: true,
        actions: [
          Center(
              child: IconButton(
                  onPressed: () => html.window
                      .open('https://github.com/elvissalabarria', "_blank"),
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    size: 16,
                    color: Colors.black,
                  ))),
          Center(
              child: IconButton(
                  onPressed: () => html.window.open(
                      'https://www.linkedin.com/in/elvis-salabarria-aquino-279001112/',
                      "_blank"),
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    size: 16,
                    color: Colors.black,
                  ))),
          Center(
              child: IconButton(
                  onPressed: () => html.window.open(
                      'https://stackoverflow.com/users/12276511/elvis-salabarria-aquino',
                      "_blank"),
                  icon: const FaIcon(
                    FontAwesomeIcons.stackOverflow,
                    size: 16,
                    color: Colors.black,
                  ))),
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.08),
            child: Center(
                child: IconButton(
                    onPressed: () => html.window.open(
                        'https://docs.google.com/document/d/1ALR7dO7-VHlY5wHJpjiRXXCfda8SPNEdDibp7gCawP0/edit?usp=sharing',
                        "_blank"),
                    icon: const FaIcon(
                      FontAwesomeIcons.fileArrowDown,
                      size: 16,
                      color: Colors.black,
                    ))),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          controller: _scrollController,
          children: [
            const Align(
              alignment: Alignment.center,
              child: AboutMeWidget(),
            ),
            const PersonalSummaryWidget(),
            const ToolSWidget(),
            const SizedBox(height: 45),
            const Divider(color: Colors.black26, thickness: 0.5),
            const SizedBox(height: 45),
            const SkillsWidget(),
            const SizedBox(height: 45),
            const Divider(color: Colors.black26, thickness: 0.5),
            const EducationAndExperience(),
            const SizedBox(height: 45),
            const Divider(color: Colors.black26, thickness: 0.5),
            const SizedBox(height: 45),
            const LatestProjectWidgetMobile(),
            const SizedBox(height: 45),
            const SizedBox(height: 45),
            const Divider(color: Colors.black26, thickness: 0.5),
            const SizedBox(height: 45),
            Row(
              children: [
                Text('Made with flutter by @elvissalabarria, design by',
                    style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                        color: Colors.black45,
                      ),
                    )),
                TextButton(
                  onPressed: () => html.window.open(
                      'https://dribbble.com/shots/16077352-Personal-Portfolio-Site-Bruno-Erdison',
                      "_blank"),
                  child: Text('Logan Cee',
                      style: GoogleFonts.notoSerif(
                        textStyle: TextStyle(
                          color: Colors.red[300],
                        ),
                      )),
                ),
                Text('and',
                    style: GoogleFonts.notoSerif(
                      textStyle: const TextStyle(
                        color: Colors.black45,
                      ),
                    )),
                TextButton(
                  onPressed: () => html.window.open(
                      'https://alcampospalacios.github.io/alcampos_portfolio/#/home',
                      "_blank"),
                  child: Text('Alejandro Campos',
                      style: GoogleFonts.notoSerif(
                        textStyle: TextStyle(
                          color: Colors.red[300],
                        ),
                      )),
                )
              ],
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
   
    );
  }
}
