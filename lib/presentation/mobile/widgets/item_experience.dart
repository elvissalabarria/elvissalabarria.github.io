// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemExpetience extends StatelessWidget {
  String name;
     ItemExpetience({ required this.name,super.key});

  @override
  Widget build(BuildContext context) {
    return    Flexible(
                child: Text(
                  name,
                  style: GoogleFonts.notoSerif(
                    textStyle:
                        const TextStyle(color: Colors.black87, fontSize: 14),
                  ),
                ),
              );
  }
}