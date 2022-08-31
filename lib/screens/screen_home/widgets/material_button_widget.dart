import 'package:flutter/material.dart';
import 'package:oder_list/routes/routes.dart';

class MaterialButtonWidgets extends StatelessWidget {
  const MaterialButtonWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      color: Colors.teal,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      onPressed: () {
        Navigator.pushNamed(context, routeCart);
      },
      child: const Text(
        "Add to cart",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
