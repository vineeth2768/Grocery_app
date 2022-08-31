// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:oder_list/models/product_model.dart';
import 'package:oder_list/screens/screen_home/widgets/selected_list.dart';

class ScreenCart extends StatelessWidget {
  ScreenCart({
    Key? key,
  }) : super(key: key);

  final ValueNotifier<List<ProductModel>> cartedItems = ValueNotifier([]);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      cartedItems.value = SelectedListView.selectedItemsNotifier.value;
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Cart'), backgroundColor: Colors.teal),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              ValueListenableBuilder(
                  valueListenable: cartedItems,
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
                                              color: Colors.black,
                                              fontSize: 12)),
                                    ),
                                    title: Text(product.productName),
                                    subtitle: Text("₹${product.price}"),
                                    trailing: IconButton(
                                      onPressed: () {
                                        cartedItems.value.removeWhere(
                                            (pr) => pr.id == product.id);
                                        cartedItems.notifyListeners();
                                      },
                                      icon: const Icon(Icons.delete),
                                    )),
                              );
                            })
                        : const Center(
                            child: Text('Cart is empty'),
                          );
                  }),
              Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  height: 40,
                  color: Colors.teal,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  child: const Text(
                    "Buy",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
