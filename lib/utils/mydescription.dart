import 'package:flutter/material.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 35, right: 35, bottom: 55),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary,
            )),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //delivery fee
              Column(
                children: [
                  Text("\$9.00",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      )),
                  Text("Delivery fee",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      )),
                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text("15-30min",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      )),
                  Text("Delivery time",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
