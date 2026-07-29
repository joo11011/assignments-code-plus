class Product {
  int? id;
  String? name;
  double? price;
  String? category;
  bool? isAvailable;
  Product({this.id, this.name, this.price, this.category, this.isAvailable});
}

void main() {
  List<Product> products = [
    Product(
      id: 1,
      name: "Milk",
      price: 30.0,
      category: "Dairy",
      isAvailable: true,
    ),
    Product(
      id: 2,
      name: "Bread",
      price: 10.0,
      category: "Bakery",
      isAvailable: true,
    ),

    Product(
      id: 3,
      name: "Eggs",
      price: 4.0,
      category: "Dairy",
      isAvailable: false,
    ),
    Product(
      id: 4,
      name: "Rice",
      price: 45.5,
      category: "Grains",
      isAvailable: true,
    ),
    Product(
      id: 5,
      name: "Chicken",
      price: 120.0,
      category: "Meat",
      isAvailable: false,
    ),
    Product(
      id: 6,
      name: "Laptop",
      price: 15000.0,
      category: "Electronics",
      isAvailable: true,
    ),
    Product(
      id: 7,
      name: "Phone",
      price: 8000.0,
      category: "Electronics",
      isAvailable: false,
    ),
  ];
  // req 1
  var checkAvailability = products.where((p) => p.isAvailable == true);
  print("Available products:");
  for (var p in checkAvailability) {
    print("${p.name}");
  }
  print("-----------------------------");
  // req 2
  var productNames = products.map((p) => p.name).toList();
  print(productNames);
  print("-----------------------------");
  // req 3
  var catElectronics = products
      .where((p) => p.category == "Electronics" && p.isAvailable == true)
      .map((p) => p.name)
      .toList();

  print(
    "Product Names with category Electronics and available: ${catElectronics}",
  );
  print("-----------------------------");
  // req 4
  var totalPrice = products.fold(
    0.0,
    (totalprice, b) => totalprice + (b.price ?? 0),
  );
  print("Total price of all products: $totalPrice");
  print("-----------------------------");
  // req 5
  var availableProducts = products
      .where((p) => p.isAvailable == true)
      .fold(0.0, (total, start) => total + (start.price ?? 0));
  print("Total price of available products: $availableProducts");
  print("-----------------------------");
  // req 6
  var anyGreaterThan20 = products.any((p) => (p.price! > 20000));
  print(
    "is there any product with a price greater than 20000 ? $anyGreaterThan20",
  );
  print("-----------------------------");
  // req 7
  var allGreaterThan100 = products.every((p) => (p.price! > 100));
  print("are all products with a price greater than 100 ? $allGreaterThan100");
  print("-----------------------------");
  // req 8
  var firsElectronicsProduct = products
      .firstWhere((p) => p.category == "Electronics")
      .name;
  print(
    "the first product that belongs to the "
    "Electronics"
    " category is $firsElectronicsProduct",
  );
  print("-----------------------------");
  // req 9
  products.sort((a, b) => a.price!.compareTo(b.price!));
  print("Products sorted by price:");
  for (var p in products) {
    print("${p.name}: ${p.price}");
  }
  print("-----------------------------");
  // req 10
  List<String> categories = ["Electronics", "Education", "Electronics", "Food"];
  print("Original categories: $categories");
  Set<String> uniqueCategories = categories.toSet();
  print("Unique categories: $uniqueCategories");
}
