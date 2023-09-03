import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/screen/home/features/categoriesScreen/logic/event/categories_filter_event.dart';
import 'package:spoon/application/presentation/screen/home/features/categoriesScreen/logic/state/categories_state.dart';

class CategoriesFilterBloc
    extends Bloc<CategoriesFilterEvent, CategoriesFilterState> {
  CategoriesFilterBloc() : super(CategoriesMaxPriceFilterState(maxPrice: 70)) {
    on<CategoriesMaxPriceFilterEvent>(
      (event, emit) {
        return emit(CategoriesMaxPriceFilterState(maxPrice: event.maxPrice));
      },
    );

    on<CategoriesMinPriceFilterEvent>((event, emit) {
      return emit(CategoriesMinPriceFilterState(minPrice: event.minPrice));
    });
  }
}
