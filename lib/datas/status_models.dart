import 'package:flutter/material.dart';

class Status {
  final String name;
  final String avatar;
  final String time;

  Status({
    required this.name,
    required this.avatar,
    required this.time,
  });
}

List<Status> Statuslists = [
  Status(
      name: "Bill Gates",
      avatar:
          'assets/images/bill-gates-microsoft-portrait-uhd-4k-wallpaper.jpg',
      time: "Just now"),
  Status(
      name: "Elon Musk",
      avatar: 'assets/images/elon musk.jpg',
      time: "Just now"),
  Status(
      name: "Flutter",
      avatar: 'assets/images/flutter.jpg',
      time: "Today 10:00 AM"),
  Status(
      name: "Coding",
      avatar: 'assets/images/coding.jpg',
      time: "Today 8:00 AM"),
  Status(
      name: "Hacker",
      avatar: 'assets/images/4k Wallpaper Follow Me.jpg',
      time: "Today 11:30 PM"),
  Status(
      name: "Swiggy",
      avatar: 'assets/images/swiggy.jpg',
      time: "Today 9:30 PM"),
];
