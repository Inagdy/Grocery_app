class ProductModel {
  String image;
  String title;
  String descripion;
  double price;
  double? imageW =103.43;
  double? imageh =62.56;


  ProductModel({
    required this.image,
    required this.title,
    required this.descripion,
    required this.price,
    this.imageW,
    this.imageh,

  });
}
