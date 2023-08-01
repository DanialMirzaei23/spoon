// todo => Bloc Data

// ignore_for_file: unrelated_type_equality_checks

import 'package:spoon/application/presentation/screen/exp_main_router.dart';
import '../../../../../packages/package.dart';

class StepSliderBloc extends Bloc<CounterSlider, StepSlider> {
  StepSliderBloc() : super(StepSlider(sliderPage: 0)) {
    on<CounterSlider>(
      (event, emit) => emit(
        StepSlider(sliderPage: stepSliderFunc(state.sliderPage)),
      ),
    );
  }

  int stepSliderFunc(int state) {
    if (state <= 0) {
      return state + 1;
    } else if (state == 2) {
      return 2;
    }
    return state + 1;
  }
// @override
// void onChange(Change<StepSlider> change) {
//   // TODO: implement onChange
//   super.onChange(change);
//   if(change.currentState==0){
//     print("object");
//   }
// }
}
