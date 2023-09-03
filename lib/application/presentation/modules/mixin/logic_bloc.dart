import 'package:spoon/application/presentation/screen/exp_main_router.dart';
import 'package:spoon/application/presentation/screen/home/features/categoriesScreen/logic/bloc/categories_filter_bloc.dart';

mixin LogicBloc {
  static StepSliderBloc stepSliderBloc = StepSliderBloc();
  static TextBloc textBloc = TextBloc();
  static BottomNavigationBarBloc bottomNavigationBarBloc =
      BottomNavigationBarBloc();
  static ProductAlbumCounterBloc productAlbumCounterBloc =
      ProductAlbumCounterBloc();
  static CategoriesFilterBloc categoriesFilterBloc = CategoriesFilterBloc();
}
