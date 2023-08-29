import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/screen/product/logic/exp_mian_router.dart';

class ProductAlbumCounterBloc
    extends Bloc<ProductAlbumCounterEvent, ProductAlbumCounterState> {
  ProductAlbumCounterBloc() : super(ProductAlbumCounterState(albumCounter: 0)) {
    on<ProductAlbumCounterEvent>(
      (event, emit) {
        emit(ProductAlbumCounterState(albumCounter: event.productAlbomCounter));
      },
    );
  }
}
