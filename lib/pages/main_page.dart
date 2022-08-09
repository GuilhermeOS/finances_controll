import 'package:finances_controll/components/app_bar_custom.dart';
import 'package:finances_controll/components/chart_bar_grid.dart';
import 'package:finances_controll/components/floating_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
        child: Column(
          children: [
            const AppBarCustom(),
            SingleChildScrollView(
              child: Container(
                height: 200,
                child: Column(
                  children: const [
                    SizedBox(height: 10),
                    ChartBarGrid(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
