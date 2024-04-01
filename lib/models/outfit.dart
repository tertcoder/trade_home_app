class Outfit {
  final String name;
  final double price;
  final List<OutfitSize> sizes;
  final String sellerContact;
  final String imagePath;

  Outfit({
    required this.name,
    required this.price,
    required this.sizes,
    required this.sellerContact,
    required this.imagePath,
  });
}

enum OutfitSize {
  small,
  medium,
  large,
  extraLarge,
  extraExtraLarge,
}
