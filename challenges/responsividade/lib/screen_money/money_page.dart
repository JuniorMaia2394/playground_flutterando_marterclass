import 'package:flutter/material.dart';
import 'package:responsividade/screen_money/widget/button_google.dart';
import 'package:responsividade/screen_money/widget/button_money_widget.dart';
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
    // final mediaQuery = MediaQuery.of(context).size;

    //quebra em 449.0, 689.0
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            const SizedBox(
              height: 200,
            ),
            const SymbolWidget(),
            const SizedBox(
              height: 40,
            ),
            const TextWidget(),
            const SizedBox(
              height: 100,
            ),
            const ButtonWidgetMoney(),
            const SizedBox(
              height: 12,
            ),
            const ButtonGoogle(),
            const SizedBox(
              height: 20,
            ),
            const TextBottomWidget(),
          ],
        ),
      ),
    );
  }
}
