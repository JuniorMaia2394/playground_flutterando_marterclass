import 'package:flutter/material.dart';
import 'package:responsividade/screen_money/money_page.dart';
import 'package:responsividade/screen_tinder/tinder_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TinderPage(),
      // home: MoneyPage(),
    ),
  );
}
