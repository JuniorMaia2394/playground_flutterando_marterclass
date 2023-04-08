import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsividade/screen_tinder/widget/button_widget.dart';
import 'package:responsividade/screen_tinder/widget/text_signing.dart';
import 'package:responsividade/screen_tinder/widget/text_terms.dart';

class TinderPage extends StatefulWidget {
  const TinderPage({super.key});

  @override
  State<TinderPage> createState() => _TinderPageState();
}

class _TinderPageState extends State<TinderPage> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: media.height,
        width: media.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.9,
            ],
            colors: [
              Colors.deepOrangeAccent,
              Colors.pink,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.keyboard_arrow_left_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 80,
                  right: 80,
                  top: 150,
                ),
                child: Image.asset(
                  'assets/logo_tinder.png',
                  width: 500,
                ),
              ),
              const TextTerms(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    ButtonWidget(
                      text: 'SIGN IN WITH APPLE',
                      icon: 'assets/apple_logo.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ButtonWidget(
                      text: 'SIGN IN WITH FACEBOOK',
                      icon: 'assets/facebook_logo.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ButtonWidget(
                      text: 'SIGN IN WITH PHONE NUMBER',
                      icon: 'assets/ballon.png',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextSigin(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
