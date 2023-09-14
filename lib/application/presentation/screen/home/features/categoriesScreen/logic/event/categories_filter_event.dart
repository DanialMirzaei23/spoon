import 'package:spoon/application/packages/package.dart';

sealed class CategoriesEvent {}

class CategoriesMaxPriceFilterEvent extends CategoriesEvent {
  final double maxPrice;

  CategoriesMaxPriceFilterEvent({required this.maxPrice});
}

class CategoriesMinPriceFilterEvent extends CategoriesEvent {
  final double minPrice;

  CategoriesMinPriceFilterEvent({required this.minPrice});
}
