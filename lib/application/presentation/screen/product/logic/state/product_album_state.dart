import 'package:spoon/application/packages/package.dart';

sealed class ProductAlbumState extends Equatable {}

class ProductAlbumCounterState extends ProductAlbumState {
  final int albumCounter;
  ProductAlbumCounterState({required this.albumCounter});

  @override
  List<Object?> get props => [albumCounter];
}
