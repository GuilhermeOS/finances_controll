import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 260,
          child: Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.background,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings,
                            size: 35,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Text(
                                "Agosto",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.transactionForm);
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "Saldo",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "R\$ 0,00",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Receitas"),
                                Text("R\$ 2.000,00")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Despesas"),
                                Text("R\$ -2.000,00")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
