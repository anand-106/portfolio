import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    // Your widget build method here
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width * 0.7,
        height: 150,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(149, 157, 165, 0.2),
              blurRadius: 24,
              spreadRadius: 0,
              offset: Offset(
                0,
                8,
              ),
            ),
          ],
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$title',
                    style: GoogleFonts.anonymousPro(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    indent: 100,
                    endIndent: 100,
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    '$imagepath',
                    scale: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: SizedBox(
                      width: 500,
                      height: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "$description",
                            style: GoogleFonts.openSans(fontSize: 17),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              final Uri url = Uri.parse(ghurl);
                              if (!await launchUrl(url)) {
                                throw Exception('Could not launch $url');
                              }
                            },
                            child: Row(
                              children: [
                                Text('GitHub'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Image.asset(
                                    'lib/assets/github.png',
                                    scale: 1.4,
                                  ),
                                )
                              ],
                            ),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.black),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 255, 255, 255)),
                                side: MaterialStatePropertyAll(
                                    BorderSide(color: Colors.black)),
                                surfaceTintColor: MaterialStatePropertyAll(
                                    Colors.transparent),
                                fixedSize: MaterialStatePropertyAll(
                                    Size.fromWidth(120))),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
