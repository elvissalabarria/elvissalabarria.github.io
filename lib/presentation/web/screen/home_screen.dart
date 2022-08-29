import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/about_me_widget.dart';
import '../widget/education_and_experience_widget.dart';
import '../widget/latest_projects_widget.dart';
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
        ? _scrollController.animateTo(200, duration: const Duration(milliseconds: 800), curve: Curves.easeIn)
        : _scrollController.animateTo(1400, duration: const Duration(milliseconds: 800), curve: Curves.easeIn);
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
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _scrollToIndex('work');
                  });
                },
                child: const Text(
                  'Works',
                  style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87),
                ),
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
              child: const Text(
                'Contact',
                style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black87),
              ),
            ),
          ],
        ),
        title: Image.asset(
          'assets/logos/alcampos.png',
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.27,
        ),
        centerTitle: true,
        actions: [
          Center(
              child: IconButton(
                  onPressed: () => html.window.open('https://github.com/alcampospalacios', "_blank"),
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    size: 16,
                    color: Colors.black,
                  ))),
          Center(
              child: IconButton(
                  onPressed: () => html.window.open('https://twitter.com/4l3j4ndr09212', "_blank"),
                  icon: const FaIcon(
                    FontAwesomeIcons.twitter,
                    size: 16,
                    color: Colors.black,
                  ))),
          Center(
              child: IconButton(
                  onPressed: () => html.window.open('https://www.linkedin.com/in/alcampospalacios', "_blank"),
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedinIn,
                    size: 16,
                    color: Colors.black,
                  ))),
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.08),
            child: Center(
                child: IconButton(
                    onPressed: () => html.window.open('https://www.instagram.com/alejandrocampospalacios', "_blank"),
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      size: 16,
                      color: Colors.black,
                    ))),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 18.0,
          left: MediaQuery.of(context).size.width * 0.08,
          right: MediaQuery.of(context).size.width * 0.08,
        ),
        child: ListView(
          controller: _scrollController,
          children: const [
            Align(
              alignment: Alignment.center,
              child: AboutMeWidget(),
            ),
            PersonalSummaryWidget(),
            ToolSWidget(),
            SizedBox(height: 45),
            Divider(color: Colors.black26, thickness: 0.5),
            SizedBox(height: 45),
            SkillsWidget(),
            SizedBox(height: 45),
            Divider(color: Colors.black26, thickness: 0.5),
            EducationAndExperience(),
            SizedBox(height: 45),
            Divider(color: Colors.black26, thickness: 0.5),
            SizedBox(height: 45),
            LatestProjectWidget(),
            SizedBox(height: 45),
            SizedBox(height: 45),
            Divider(color: Colors.black26, thickness: 0.5),
            SizedBox(height: 45),
            Text('Made with flutter by @alcampospalacios, design by Logan Cee',
                style: TextStyle(fontFamily: 'NotoSerif', color: Colors.black45)),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}