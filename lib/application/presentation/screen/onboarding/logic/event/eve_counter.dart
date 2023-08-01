// todo => event Data

import '../../../../../packages/package.dart';

sealed class CounterEvent extends Equatable{}

final class CounterSlider extends CounterEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [0];
}