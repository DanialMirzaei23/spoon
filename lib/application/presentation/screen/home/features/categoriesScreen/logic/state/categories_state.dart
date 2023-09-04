import 'package:spoon/application/packages/package.dart';

sealed class CategoriesState {}

class CategoriesMinPriceFilterState extends CategoriesState {
  final double? minPrice;

  CategoriesMinPriceFilterState({this.minPrice}) {
    print('minPrice = $minPrice');
  }
}

class CategoriesMaxPriceFilterState extends CategoriesState {
  final double? maxPrice;

  CategoriesMaxPriceFilterState({this.maxPrice = 120}) {
    print('maxPrice = $maxPrice');
  }
}
