import 'package:flutter/material.dart';

import 'dummyone.dart';
import 'dummythree.dart';
import 'dummytwo.dart';
import 'homescreen.dart';

class NavigatorItem {
  final String label;
  final IconData iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Home", Icons.home, 0, FrontPage()),
  NavigatorItem("My Bookings", Icons.library_books, 1, DummyOne()),
  NavigatorItem("Customer", Icons.file_open, 2, DummyTwo()),
  NavigatorItem("History", Icons.history, 3, DummyThree()),
];
