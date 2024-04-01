import 'package:flutter/material.dart';
import 'package:trade_home_app/models/outfit.dart';

class OutfitRepo extends ChangeNotifier {
  final List<Outfit> _outfits = [
    Outfit(
      name: "T-Shirt",
      price: 40.89,
      sizes: [
        OutfitSize.medium,
        OutfitSize.large,
        OutfitSize.extraLarge,
      ],
      sellerContact: '+2576584961',
      imagePath: 'assets/images/item1.jpeg',
    ),
    Outfit(
      name: "White Pullover",
      price: 53.50,
      sizes: [
        OutfitSize.medium,
        OutfitSize.extraLarge,
      ],
      sellerContact: '+2576584961',
      imagePath: 'assets/images/item2.jpeg',
    ),
    Outfit(
      name: "Yellow Pullover",
      price: 53.50,
      sizes: [
        OutfitSize.small,
        OutfitSize.large,
      ],
      sellerContact: '+2576584961',
      imagePath: 'assets/images/item3.jpeg',
    ),
    Outfit(
      name: "Shirt & Trouser",
      price: 80.99,
      sizes: [
        OutfitSize.medium,
        OutfitSize.large,
      ],
      sellerContact: '+2576584961',
      imagePath: 'assets/images/item4.jpeg',
    ),
  ];

  List<Outfit> get outfits => _outfits;

  void addOutfit(Outfit outfit) {
    _outfits.add(outfit);
    notifyListeners();
  }

  void removeOutfit(Outfit outfit) {
    _outfits.remove(outfit);
    notifyListeners();
  }

  void clearOutfits() {
    _outfits.clear();
    notifyListeners();
  }
}
