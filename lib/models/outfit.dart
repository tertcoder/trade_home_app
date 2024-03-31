class Outfit {
  final String name;
  final double price;
  final List<OutfitSize> sizes;
  final int sellerContact;

  Outfit({
    required this.name,
    required this.price,
    required this.sizes,
    required this.sellerContact,
  });
}

enum OutfitSize {
  small,
  medium,
  large,
  extraLarge,
  extraExtraLarge,
}
