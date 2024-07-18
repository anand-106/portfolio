import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/project_card.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  final ScrollController _scrollController = ScrollController();

  double get _cardWidth {
    return MediaQuery.of(context).size.width * 0.7 +
        20; // Card width plus horizontal margin
  }

  void _scrollLeft() {
    _scrollController.animateTo(
      (_scrollController.offset - _cardWidth)
          .clamp(0.0, _scrollController.position.maxScrollExtent),
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      (_scrollController.offset + _cardWidth)
          .clamp(0.0, _scrollController.position.maxScrollExtent),
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PROJECTS',
                style: GoogleFonts.firaCode(fontSize: 35),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            indent: 100,
            endIndent: 100,
            height: 0,
          ),
          SizedBox(height: 20),
          Expanded(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    if (_scrollController.hasClients) {
                      _scrollLeft();
                    }
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return ProjectCard(
                          title: 'Bus Tracking Application',
                          description:
                              "This project features two Flutter applications for real-time bus location tracking, designed initially for a college bus system but scalable to larger transport networks. Driver App: Enables bus drivers to send real-time location updates to Firebase. User App: Allows users to select bus routes and view real-time bus locations on a map. Technologies Used: Flutter, Dart, Firebase Realtime Database, Mapbox Maps API, Firebase Authentication.",
                          imagepath: "lib/assets/bus.png",
                          ghurl:
                              'https://github.com/anand-106/bus_tracking_application',
                        );
                      }
                      if (index == 1) {
                        return ProjectCard(
                          title: 'All-in-KTU App',
                          description:
                              "An essential tool designed specifically for B.Tech students of KTU (APJ Abdul Kalam Technological University). The app aims to assist students in managing various academic tasks throughout their B.Tech journey. Currently, in its pre-release stage, the app features a CGPA/SGPA calculator, with many more functionalities planned for future updates.",
                          imagepath: "lib/assets/ktu.png",
                          ghurl:
                              'https://github.com/anand-106/All-in-one-KTU_APP',
                        );
                      }
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    if (_scrollController.hasClients) {
                      _scrollRight();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
