import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/screen/home/features/categoriesScreen/logic/event/categories_filter_event.dart';
import 'package:spoon/application/presentation/screen/home/features/categoriesScreen/logic/state/categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc()
      : super(CategoriesMinPriceFilterState(minPrice: 0,)) {
    on<CategoriesMaxPriceFilterEvent>(
      (event, emit) {
        // print('max');
        // print(event.maxPrice);
        return emit(CategoriesMaxPriceFilterState(maxPrice: event.maxPrice));
      },
    );

    on<CategoriesMinPriceFilterEvent>((event, emit) {
      // print('min');
      //   print(event.minPrice);
      return emit(CategoriesMinPriceFilterState(minPrice: event.minPrice));
    });
  }
}
