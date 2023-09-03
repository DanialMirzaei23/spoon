import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

class SearchGenerate extends StatelessWidget {
  const SearchGenerate({super.key,
    // required this.textEditingController,
    // required this.textInputType,
    // required this.textInputAction,
    required this.titleField
   });

  final String  titleField;
  // final TextEditingController textEditingController;
  //
  // final TextInputType textInputType;
  // final TextInputAction textInputAction;


  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (context, controller) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: GenerateDataColors.white_neutral.toHex
        ),
        child: SearchBar(controller: controller,
        backgroundColor: MaterialStateProperty.all(GenerateDataColors.white_neutral.toHex),
          elevation: MaterialStateProperty.all(0.0),
          hintText: titleField,
          leading: SvgGenerated(generate: Generate.asset,
          router: GenerateDataImages.icon_search,
          width: context.mediaQueryWidth(context) * .03,
          height: context.mediaQueryHeight(context) *  .03).toSpace(context: context,left: .04,right: .02),
          onTap: () => controller.openView(),
        ),
      );
    }, suggestionsBuilder: (context, controller) {
      return [
        // "danial".toText(context: context),
        // "danial2".toText(context: context),
        // "danial3".toText(context: context),
        // "danial4".toText(context: context),
      ] ;
    },isFullScreen: true,
      viewHintText: titleField,
      viewElevation: 0.0,
      // searchController: Controller.searchAnchor,

    );
  }
}
