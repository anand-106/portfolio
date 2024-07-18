import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);
  @override
  Widget build(context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: DefaultTextStyle(
                    style: GoogleFonts.firaCode(fontSize: 50),
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
                      style: GoogleFonts.firaCode(fontSize: 20),
                      child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText(
                                "I'm a dedicated computer science engineering student at Muthoot Institute of Technology and Science, with a strong passion for exploring the dynamic field of artificial intelligence. My academic journey has equipped me with a solid foundation in computer science principles, while my curiosity and enthusiasm for AI drive me to delve into cutting-edge technologies and innovations.",
                                speed: const Duration(milliseconds: 10)),
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
    );
  }
}
