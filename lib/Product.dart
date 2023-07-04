// ignore_for_file: file_names

//Here we can add some feature to each product like the color of the sign
class Product {
  String? name;
  String? distance;
  String? town;
  String? phone;
  String? image;
  String? price;

  Product(String? name, String? distance, String? town, String? phone,
      String? image, String? price) {
    this.name = name;
    this.distance = distance;
    this.town = town;
    this.image = image;
    this.phone = phone;
    this.price = price;
  }
}
