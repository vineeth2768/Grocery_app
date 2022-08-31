class ProductModel {
  final int id;
  final String productName;
  final num price;
  final String image;

  ProductModel({
    required this.id,
    required this.productName,
    required this.price,
    required this.image,
  });

  static final List<Map<String, dynamic>> products = [
    {
      'id': 1,
      'productName': 'Apple',
      'price': 110,
      'image': "assets/products/apple.jpg"
    },
    {
      'id': 2,
      'productName': 'Orange',
      'price': 80,
      'image': "assets/products/orange.jpg"
    },
    {
      'id': 3,
      'productName': 'Grapes',
      'price': 85,
      'image': "assets/products/grapes.jpg"
    },
    {
      'id': 4,
      'productName': 'Banana',
      'price': 35,
      'image': "assets/products/banana.jpg"
    },
    {
      'id': 5,
      'productName': 'Cucumbar',
      'price': 40,
      'image': "assets/products/cucunbar.jpg"
    },
    {
      'id': 6,
      'productName': 'Water Melon',
      'price': 24,
      'image': "assets/products/watermelone.jpg"
    },
    {
      'id': 7,
      'productName': 'Avacado',
      'price': 98,
      'image': "assets/products/avacado.jpg"
    },
    {
      'id': 8,
      'productName': 'Tomato',
      'price': 26,
      'image': "assets/products/tomato.jpg"
    },
    {
      'id': 9,
      'productName': 'Onion',
      'price': 34,
      'image': "assets/products/onion.jpg"
    },
    {
      'id': 10,
      'productName': 'Potato',
      'price': 18,
      'image': "assets/products/potato.jpg"
    },
  ];
}
