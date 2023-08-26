// todo => Bloc Data

import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/screen/exp_main_router.dart';

class BottomNavigationBarBloc extends Bloc<NavigationbarEvent , NavbarAction>{
  BottomNavigationBarBloc():super(NavbarAction(screens: const HomeScreen())){
    on<HomeAction>((event, emit) =>emit(NavbarAction(screens: const HomeScreen() )) );
    on<MenuAction>((event, emit) =>emit(NavbarAction(screens: const MenuScreen() )) );
    on<FavoriteAction>((event, emit) =>emit(NavbarAction(screens: const FavoriteScreen() )) );
    on<ShopAction>((event, emit) =>emit(NavbarAction(screens: const ShopScreen() )) );
  }
}