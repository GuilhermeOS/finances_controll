import 'package:finances_controll/utils/app_routes.dart';
import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        leading: IconButton(
          onPressed: () =>
              Navigator.of(context).popAndPushNamed(AppRoutes.home),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Transações"),
      ),
    );
  }
}
