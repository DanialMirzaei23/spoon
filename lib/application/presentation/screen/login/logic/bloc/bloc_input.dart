// Core Bloc

// ignore_for_file: use_function_type_syntax_for_parameters

import 'package:spoon/application/presentation/screen/exp_main_router.dart';

import '../../../../../packages/package.dart';

class TextBloc extends Bloc<EventGenerateInput,GenerateInputState>{
  TextBloc():super(GenerateInputState(generateInput: '')){
   on<SelectText>((event, emit) => emit(GenerateInputState(generateInput:state.generateInput ),),);
  }
}

// class TextBlocPassword extends Bloc<EventGenerateInput,StateGeneratedInput>{
//   TextBlocPassword({}):super()){
//
//   }
// }