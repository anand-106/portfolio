import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/skills.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
            backgroundColor: Color(0xFFd8dcdf),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Text("Anand"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {}, child: Text('About')),
                              TextButton(
                                  onPressed: () {}, child: Text('Projects')),
                              TextButton(
                                  onPressed: () {}, child: Text('Skills')),
                              TextButton(
                                  onPressed: () {}, child: Text('Contact')),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: About(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Projects(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Skill(),
                  )
                ],
              ),
            ))),
  );
}
