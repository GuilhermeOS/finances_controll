import 'package:finances_controll/pages/main_page.dart';
import 'package:finances_controll/utils/app_routes.dart';
import 'package:flutter/material.dart';

import '../components/floating_button.dart';

class SelectedPage extends StatefulWidget {
  const SelectedPage({Key? key}) : super(key: key);

  @override
  State<SelectedPage> createState() => _SelectedPageState();
}

class _SelectedPageState extends State<SelectedPage> {
  int _selectedPageIndex = 0;

  _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });

    if (_selectedPageIndex == 0) {
      Navigator.popAndPushNamed(context, AppRoutes.home);
    } else {
      Navigator.popAndPushNamed(context, AppRoutes.transactions);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.moving_rounded),
            label: "Transações",
          ),
        ],
      ),
      floatingActionButton: const FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
