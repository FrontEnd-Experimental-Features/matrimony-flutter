import 'package:flutter/material.dart';

abstract class DrawerSection {
  Widget build(BuildContext context);
  String get sectionTitle;
} 