import 'package:spoon/application/packages/package.dart';

sealed class CategoriesFilterEvent extends Equatable {}

class CategoriesMaxPriceFilterEvent extends CategoriesFilterEvent {
  final double maxPrice;

  CategoriesMaxPriceFilterEvent({required this.maxPrice});
  @override
  List<Object?> get props => [20];
}

class CategoriesMinPriceFilterEvent extends CategoriesFilterEvent {
  final double minPrice;

  CategoriesMinPriceFilterEvent({required this.minPrice});
  @override
  List<Object?> get props => [0];
}
