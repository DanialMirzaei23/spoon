// todo => event Data
import 'package:spoon/application/packages/package.dart';
import 'package:spoon/application/presentation/screen/exp_main_router.dart';

sealed class NavigationbarEvent extends Equatable{}

final class HomeAction extends NavigationbarEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [const HomeScreen()];
}
final class MenuAction extends NavigationbarEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [const MenuScreen()];
}
final class FavoriteAction extends NavigationbarEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [const FavoriteScreen()];
}
final class ShopAction extends NavigationbarEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [const ShopScreen()];
}