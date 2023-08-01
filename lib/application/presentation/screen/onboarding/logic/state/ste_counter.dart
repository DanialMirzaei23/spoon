// todo => state Data

// ignore_for_file: must_be_immutable

import '../../../../../packages/package.dart';

sealed class CounterState extends Equatable{}

final class StepSlider extends CounterState{
   StepSlider({this.sliderPage = 0});
  late int sliderPage;
  @override
  // TODO: implement props
  List<Object?> get props => [sliderPage];
}