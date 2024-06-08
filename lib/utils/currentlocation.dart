// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
                title: Text("Your Location"),
                content: TextField(
                  decoration: InputDecoration(hintText: "Search Address"),
                ),
                actions: [
                  MaterialButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Cancel")),
                  MaterialButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Save"))
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Deliver Now",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              )),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //address
                Text("Location",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold)),
                //Drop down menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
