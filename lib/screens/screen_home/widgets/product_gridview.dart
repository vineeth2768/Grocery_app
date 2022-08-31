// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:oder_list/models/product_model.dart';
import 'package:oder_list/screens/screen_home/widgets/selected_list.dart';

class ProductGridView extends StatelessWidget {
  ProductGridView({
    Key? key,
  }) : super(key: key);

  final ValueNotifier<List<ProductModel>> _productsNotifier = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    // Call after Build finished!!
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _productsNotifier.value = ProductModel.products.map((product) {
        return ProductModel(
          id: product['id'],
          productName: product['productName'],
          price: product['price'],
          image: product['image'],
        );
      }).toList();
    });

    return ValueListenableBuilder(
        valueListenable: _productsNotifier,
        builder: (context, List<ProductModel> products, _) {
          return GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 130,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (BuildContext ctx, index) {
              final ProductModel product = products[index];
              return InkWell(
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(product.image),
                      ),
                      Text(product.productName),
                      Text("₹${product.price}"),
                    ],
                  ),
                ),
                onTap: () {
                  SelectedListView.selectedItemsNotifier.value.add(product);
                  SelectedListView.selectedItemsNotifier.notifyListeners();
                  log('Product ${product.productName} added!');
                },
              );
            },
          );
        });
  }
}
