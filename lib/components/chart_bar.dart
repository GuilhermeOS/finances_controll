import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final double porcentage;
  final int type;

  const ChartBar({
    Key? key,
    required this.porcentage,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: double.infinity,
        width: 10,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            FractionallySizedBox(
              heightFactor: porcentage,
              child: Container(
                decoration: BoxDecoration(
                  color: type == 0 ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
