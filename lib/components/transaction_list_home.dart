import 'package:flutter/material.dart';

class TransactionListHome extends StatelessWidget {
  const TransactionListHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      width: double.infinity,
      height: 320,
      color: Theme.of(context).colorScheme.secondary,
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: ((context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                child: ListTile(
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  leading: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.arrow_upward,
                      color: Colors.green,
                    ),
                  ),
                  title: Text("Transação $index"),
                  subtitle: const Text("R\$ 2,000.00"),
                  trailing: const Text(""),
                ),
              ),
              const Divider(),
            ],
          );
        }),
      ),
    );
  }
}
