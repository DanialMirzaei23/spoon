// State Bloc

// ignore_for_file: must_be_immutable

import '../../../../../packages/package.dart';

sealed class StateGeneratedInput extends Equatable{}

final class GenerateInputState extends StateGeneratedInput{
  GenerateInputState({required this.generateInput}):super();
  late String generateInput ;
  @override
  // TODO: implement props
  List<Object?> get props => [generateInput];
}

final class GenerateValidatePasswordState extends StateGeneratedInput{
  GenerateValidatePasswordState({required this.passwordGenerate}):super();
  late String passwordGenerate;
  @override
  // TODO: implement props
  List<Object?> get props => [passwordGenerate];
}
final class IsValidatePasswordState extends StateGeneratedInput{
  IsValidatePasswordState({this.isValidate = false}):super();
  late bool isValidate;
  @override
  // TODO: implement props
  List<Object?> get props => [isValidate];
}