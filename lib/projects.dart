import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Bus Tracking Application',
                                        style: GoogleFonts.anonymousPro(
                                          fontSize: 25,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
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
                                        'lib/assets/bus.png',
                                        scale: 1.5,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 50.0),
                                        child: SizedBox(
                                          width: 500,
                                          height: 400,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "This project features two Flutter applications for real-time bus location tracking, designed initially for a college bus system but scalable to larger transport networks. Driver App: Enables bus drivers to send real-time location updates to Firebase. User App: Allows users to select bus routes and view real-time bus locations on a map. Technologies Used: Flutter, Dart, Firebase Realtime Database, Mapbox Maps API, Firebase Authentication.",
                                                style: GoogleFonts.openSans(
                                                    fontSize: 17),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Row(
                                                  children: [Text('GitHub')],
                                                ),
                                                style: ButtonStyle(
                                                    foregroundColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.black),
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                            Color.fromARGB(255,
                                                                255, 255, 255)),
                                                    side:
                                                        MaterialStatePropertyAll(
                                                            BorderSide(
                                                                color: Colors
                                                                    .black)),
                                                    surfaceTintColor:
                                                        MaterialStatePropertyAll(
                                                            Colors.transparent)),
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
                      if (index == 1) {
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
                              color: Color.fromARGB(255, 142, 61, 61),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Card ${index + 1}',
                                style: GoogleFonts.firaCode(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
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
