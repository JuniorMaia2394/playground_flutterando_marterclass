import 'package:flutter/material.dart';
import 'package:responsividade/home/home_page.dart';
import 'package:responsividade/screen_money/money_page.dart';
import 'package:responsividade/screen_tinder/tinder_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/tinder': (context) => const TinderPage(),
        '/money': (context) => const MoneyPage()
      },
    ),
  );
}
