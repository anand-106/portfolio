import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skill extends StatelessWidget {
  Skill({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return Container(
        height: 600,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Text(
              'PROJECTS',
              style: GoogleFonts.firaCode(fontSize: 35),
            ),
            Divider(
              color: Colors.black,
              indent: 100,
              endIndent: 100,
              height: 0,
            ),
          ],
        ));
  }
}
