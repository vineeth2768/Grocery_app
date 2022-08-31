import 'package:flutter/material.dart';

import 'package:oder_list/screens/screen_home/widgets/headline_widgets.dart';
import 'package:oder_list/screens/screen_home/widgets/material_button_widget.dart';
import 'package:oder_list/screens/screen_home/widgets/product_gridview.dart';
import 'package:oder_list/screens/screen_home/widgets/selected_list.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grocery Store"),
          backgroundColor: Colors.teal,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 5),
              const HeadLines(title: "Available Products"),
              const SizedBox(height: 5),
              // Product Grid Section
              Expanded(child: ProductGridView()),
              const SizedBox(height: 5),
              const HeadLines(title: "Selected Items List"),
              const SizedBox(height: 5),
              // Product Selected Section
              const Expanded(child: SelectedListView()),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: MaterialButtonWidgets(),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ));
  }
}
