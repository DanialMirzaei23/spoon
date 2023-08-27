// todo => state Data

// ignore_for_file: must_be_immutable

import 'package:spoon/application/packages/package.dart';

sealed class NavigationBarState extends Equatable{}

final class NavbarAction extends NavigationBarState{
  NavbarAction({required this.screens});
  // TODO: implement props
  late Widget screens;
  @override
  List<Object?> get props => [screens];
}