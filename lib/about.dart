import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/big_card.dart';

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return Bigcard1(
      child: SizedBox(
        height: 600,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: DefaultTextStyle(
                      style: GoogleFonts.firaCode(
                          fontSize: 50, color: Colors.white),
                      child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText("Hello, I'm Anand",
                                speed: Durations.short2),
                          ])),
                ),
                SizedBox(
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: DefaultTextStyle(
                        style: GoogleFonts.firaCode(
                            fontSize: 20, color: Colors.white),
                        child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TypewriterAnimatedText("A budding AI enthusiast",
                                  speed: Durations.short1),
                            ])),
                  ),
                )
              ],
            ),
            Image.asset(
              'lib/assets/anand.png',
              alignment: Alignment.centerRight,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
