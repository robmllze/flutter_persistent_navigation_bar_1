// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// Persistent Navigation Bar 1
//
// Author: Robert Mollentze
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'screen_add.dart';
import 'screen_home.dart';
import 'screen_profile.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

void main() {
  runApp(
    MaterialApp(
      title: "Persistent Navigation Bar 1",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: "/",
      routes: {
        "/": (_) => ScreenHome(key: GlobalKey<State<ScreenHome>>()),
        "/home": (_) => ScreenHome(key: GlobalKey<State<ScreenHome>>()),
        "/add": (_) => ScreenAdd(key: GlobalKey<State<ScreenAdd>>()),
        "/profile": (_) => ScreenProfile(key: GlobalKey<State<ScreenProfile>>()),
      },
      builder: (_, final child) {
        return Scaffold(
          body: Container(
            child: child,
          ),
          bottomNavigationBar: Container(
            height: 40.0,
            width: double.infinity,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () async {
                    print("Navigating to /home...");
                    final context = (child?.key as GlobalKey?)?.currentContext;
                    if (context != null) {
                      await Navigator.pushNamed(context, "/home");
                    }
                  },
                  child: const Icon(Icons.home),
                ),
                GestureDetector(
                  onTap: () async {
                    print("Navigating to /add...");
                    final context = (child?.key as GlobalKey?)?.currentContext;
                    if (context != null) {
                      await Navigator.pushNamed(context, "/add");
                    }
                  },
                  child: const Icon(Icons.add),
                ),
                GestureDetector(
                  onTap: () async {
                    print("Navigating to /profile...");
                    final context = (child?.key as GlobalKey?)?.currentContext;
                    if (context != null) {
                      await Navigator.pushNamed(context, "/profile");
                    }
                  },
                  child: const Icon(Icons.person),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
