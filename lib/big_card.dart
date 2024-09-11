import 'dart:ui';

import 'package:flutter/material.dart';

class Bigcard1 extends StatelessWidget {
  final Widget child;

  const Bigcard1({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: const BorderSide(
                    color: Color.fromARGB(59, 255, 255, 255),
                    width: 1.0,
                  ),
                ),
                shadowColor: Colors.transparent,
                elevation: 0,
                color: Colors.grey.withOpacity(0.1),
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 6.0, top: 6, right: 6, bottom: 6),
                    child: child),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
