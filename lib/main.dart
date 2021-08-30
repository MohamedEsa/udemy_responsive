import 'dart:io';

import 'package:adabtiveandres/desktop.dart';
import 'package:adabtiveandres/mobile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Builder(
          builder: (context) {
            String os = Platform.operatingSystem;
            print(os);
            if (MediaQuery.of(context).size.width.toInt() <= 560)
              return MediaQuery(
                child: MobileScreen(),
                data: MediaQuery.of(context).copyWith(textScaleFactor: 0.7),
              );
            return DesktopScreen();
          },
        )

        //  LayoutBuilder(
        //   builder: (BuildContext context, BoxConstraints constraints) {
        //     print(constraints.minWidth.toInt());
        //     if (constraints.minWidth.toInt() < 560) return MobileScreen();

        //     return DesktopScreen();
        //   },
        // ),
        );
  }
}
