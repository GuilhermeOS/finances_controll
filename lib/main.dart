import 'package:finances_controll/pages/main_page.dart';
import 'package:finances_controll/pages/selected_page.dart';
import 'package:finances_controll/pages/transaction_form.dart';
import 'package:finances_controll/pages/transactions_page.dart';
import 'package:finances_controll/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(secondary: Colors.white, background: Colors.grey[200]),
      ),
      routes: {
        AppRoutes.home: ((context) => const SelectedPage()),
        AppRoutes.mainPage: ((context) => const HomePage()),
        AppRoutes.transactions: ((context) => const TransactionsPage()),
        AppRoutes.transactionForm: ((context) => const TransactionFormPage())
      },
    );
  }
}
