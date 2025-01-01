import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  String itemName;
  String itemPrice;
  String imagePath;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  void Function()? onPress;

  GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color,
      required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.green[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 64,
            ),
            Spacer(),
            Text(
              itemName,
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            MaterialButton(
              onPressed: onPress,
              color: Colors.green[800],
              child: Text(
                itemPrice,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
