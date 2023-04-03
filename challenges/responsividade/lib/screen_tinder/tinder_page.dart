import 'package:flutter/material.dart';
import 'package:responsividade/screen_tinder/widget/button_apple.dart';
import 'package:responsividade/screen_tinder/widget/button_facebook.dart';
import 'package:responsividade/screen_tinder/widget/button_number.dart';
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
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
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
              const Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.keyboard_arrow_left_rounded,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 80,
                  right: 80,
                  top: 300,
                ),
                child: Image.asset(
                  'assets/logo_tinder.png',
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
                  children: const [
                    ButtonApple(),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonFacebook(),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonNumber(),
                    SizedBox(
                      height: 30,
                    ),
                    TextSigin(),
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
