import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call {
  final String name;
  final String avatar;
  final String lastmessage;
  final String time;
  final int count;

  Call({
    required this.name,
    required this.avatar,
    required this.lastmessage,
    required this.time,
    var this.count = 0,
  });
}

List<Call> Calllists = [
  Call(
      name: "Bill Gates",
      avatar:
          'assets/images/bill-gates-microsoft-portrait-uhd-4k-wallpaper.jpg',
      lastmessage: "(2) 5 minutes ago",
      time: "1:39 AM",
      count: 2),
  Call(
      name: "Elon Musk",
      avatar: 'assets/images/elon musk.jpg',
      lastmessage: " 10 minutes ago",
      time: "10:30 PM",
      count: 2),
  Call(
      name: "Pinarayi Vijayan",
      avatar: 'assets/images/pinarayi.jpg',
      lastmessage: " 15 minutes ago",
      time: "10:49 PM",
      count: 2),
  Call(
      name: "Flutter",
      avatar: 'assets/images/flutter.jpg',
      lastmessage: " 35 minutes ago",
      time: "10:00 AM",
      count: 2),
  Call(
      name: "Coding",
      avatar: 'assets/images/coding.jpg',
      lastmessage: " 50 minutes ago",
      time: "8:00 AM",
      count: 2),
  Call(
      name: "Hacker",
      avatar: 'assets/images/4k Wallpaper Follow Me.jpg',
      lastmessage: " 55 minutes ago",
      time: "11:30 PM",
      count: 2),
  Call(
      name: "Swiggy",
      avatar: 'assets/images/swiggy.jpg',
      lastmessage: "55 minutes ago",
      time: "9:30 PM",
      count: 2),
];
