// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// Persistent Navigation Bar 1
//
// Author: Robert Mollentze
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenPersonState();
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class _ScreenPersonState extends State<ScreenProfile> {
  //late final _globalKey = this.widget.key as GlobalKey<State<ScreenProfile>>;
  @override
  Widget build(_) {
    return Column(
      children: [
        const Text("Profile"),
        GestureDetector(
          onTap: () async {
            print("Navigating to /home...");
            await Navigator.pushNamed(context, "/home");
          },
          child: const Icon(Icons.home),
        ),
        GestureDetector(
          onTap: () async {
            print("Navigating to /add...");
            await Navigator.pushNamed(context, "/add");
          },
          child: const Icon(Icons.add),
        ),
        GestureDetector(
          onTap: () async {
            print("Navigating to /profile...");
            await Navigator.pushNamed(context, "/profile");
          },
          child: const Icon(Icons.person),
        ),
      ],
    );
  }
}
