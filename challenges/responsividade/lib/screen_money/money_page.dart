import 'package:flutter/material.dart';
import 'package:responsividade/screen_money/widget/button_google.dart';
import 'package:responsividade/screen_money/widget/button_widget.dart';
import 'package:responsividade/screen_money/widget/symbol_widget.dart';
import 'package:responsividade/screen_money/widget/text_bottom_widget.dart';
import 'package:responsividade/screen_money/widget/text_widget.dart';

class MoneyPage extends StatefulWidget {
  const MoneyPage({super.key});

  @override
  State<MoneyPage> createState() => _MoneyPageState();
}

class _MoneyPageState extends State<MoneyPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    print(mediaQuery);
    //quebra em 449.0, 689.0
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SymbolWidget(),
            SizedBox(
              height: 40,
            ),
            TextWidget(),
            SizedBox(
              height: 100,
            ),
            ButtonWidget(),
            SizedBox(
              height: 12,
            ),
            ButtonGoogle(),
            SizedBox(
              height: 20,
            ),
            TextBottomWidget(),
          ],
        ),
      ),
    );
  }
}
