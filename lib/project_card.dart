import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/big_card.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imagepath;
  final String ghurl;

  ProjectCard({
    required this.title,
    required this.description,
    required this.imagepath,
    required this.ghurl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Bigcard1(
        child: SizedBox(
          height: 600, // Adjust the height to avoid overflow
          width: 200,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.firaCode(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(description),
                SizedBox(height: 10),
                Image.asset(imagepath),
                SizedBox(height: 10),
                InkWell(
                  onTap: () async {
                    if (await canLaunch(ghurl)) {
                      await launch(ghurl);
                    }
                  },
                  child: Text(
                    'View on GitHub',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
