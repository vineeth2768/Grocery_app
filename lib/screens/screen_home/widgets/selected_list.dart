// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:oder_list/models/product_model.dart';

class SelectedListView extends StatelessWidget {
  const SelectedListView({
    Key? key,
  }) : super(key: key);

  static final ValueNotifier<List<ProductModel>> selectedItemsNotifier =
      ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedItemsNotifier,
        builder: (context, List<ProductModel> products, _) {
          return products.isNotEmpty
              ? ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, index) {
                    final ProductModel product = products[index];
                    return Card(
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('${index + 1}',
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 12)),
                          ),
                          title: Text(product.productName),
                          subtitle: Text("₹${product.price}"),
                          trailing: IconButton(
                            onPressed: () {
                              selectedItemsNotifier.value
                                  .removeWhere((pr) => pr.id == product.id);
                              selectedItemsNotifier.notifyListeners();
                            },
                            icon: const Icon(Icons.delete),
                          )),
                    );
                  })
              : const Center(
                  child: Text('No product is selected !'),
                );
        });
  }
}
