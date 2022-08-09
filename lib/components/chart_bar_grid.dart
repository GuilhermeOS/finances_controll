import 'package:finances_controll/components/chart_bar.dart';
import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class ChartBarGrid extends StatelessWidget {
  const ChartBarGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: double.infinity,
            child: Row(
              children: const [
                ChartBar(porcentage: 0.5, type: 0),
                ChartBar(porcentage: 0.5, type: 1),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.background,
                width: 1.0,
              ),
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: 200,
            child: Column(
              children: [
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "Receitas:",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "R\$ 2.000,00",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "Despesas:",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "R\$ -2.000,00",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.background,
                      width: 1.0,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (() => Navigator.popAndPushNamed(
                      context, AppRoutes.transactions)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("Transações"),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(Icons.arrow_forward_rounded)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
