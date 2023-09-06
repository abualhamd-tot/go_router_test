class ProductModel {
  final String name;
  final double amount;

  ProductModel({
    required this.name,
    required this.amount,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json["name"],
      amount: json["amount"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "amount": amount,
    };
  }
}
