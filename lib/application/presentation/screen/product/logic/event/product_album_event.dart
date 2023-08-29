import 'package:spoon/application/packages/package.dart';

sealed class ProductAlbumEvent extends Equatable {}

class ProductAlbumCounterEvent extends ProductAlbumEvent {
  final int productAlbomCounter;
  ProductAlbumCounterEvent({required this.productAlbomCounter});
  
  @override
  List<Object?> get props => [];
}
