import 'package:spoon/application/packages/package.dart';

sealed class CategoriesFilterState extends Equatable {}

class CategoriesMinPriceFilterState extends CategoriesFilterState {
  final double minPrice;

  CategoriesMinPriceFilterState({required this.minPrice});

  @override
  List<Object?> get props => [0];
}

class CategoriesMaxPriceFilterState extends CategoriesFilterState {
  final double maxPrice;

  CategoriesMaxPriceFilterState({this.maxPrice = 20});

  @override
  List<Object?> get props => [20];
}