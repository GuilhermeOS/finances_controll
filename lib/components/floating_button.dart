import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).pushNamed(AppRoutes.transactionForm);
      },
      child: const Icon(
        Icons.add,
        color: Colors.purple,
      ),
    );
  }
}
