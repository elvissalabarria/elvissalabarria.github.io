// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardProjectWidgetMobile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const CardProjectWidgetMobile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
            onTap: () => html.window.open(url, "_blank"),
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(

                    image: AssetImage(
                      imageUrl,
                    ),
                    fit: BoxFit.contain,
                  ),
                ))),
        Text(title,
            style: GoogleFonts.notoSerif(
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            )),
      ],
    );
  }
}
