// Event Bloc

import '../../../../../packages/package.dart';

sealed class EventGenerateInput extends Equatable{}

final class SelectText extends EventGenerateInput{
  @override
  // TODO: implement props
  List<Object?> get props => [''];
}
final class SelectPassword extends EventGenerateInput{
  @override
  // TODO: implement props
  List<Object?> get props => [''];
}
