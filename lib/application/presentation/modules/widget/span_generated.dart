// ignore_for_file: non_constant_identifier_names

import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';

import '../../../packages/package.dart';
import 'exp_main_router.dart';

class SpanGenerated extends StatelessWidget {
  const SpanGenerated(
      {super.key,
      required this.text_one,
      required this.text_tow,
      required this.description,
        this.fontSize  = 14.0,
        this.fontWeight = FontWeight.bold,
        this.color = Colors.black,  this.text_tree='',  this.isTextTree=false
      });

  final String text_one;
  final String text_tree;
  final String text_tow;
  final double fontSize;
  final String description;
  final FontWeight fontWeight ;
  final Color color ;
  final bool isTextTree;
//
  //FontWeight.bold
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: text_one,
            style: ToStyle(
                fontWeight: fontWeight,
                fontSize: fontSize,
                color: color
            ),
            children: [
              RoundedBackgroundTextSpan(text: text_tow, style: ToStyle(
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                  color: context.toTheme.colorScheme.primary)),
              isTextTree==true ? RoundedBackgroundTextSpan(text: text_tree, style: ToStyle(
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                  color: color)) : TextSpan(text: ''),
            ],
          ),
        ),
        toSpaceVertical(context: context,size: .01),
        RichText(
          text: TextSpan(
            text: description,
            style: ToStyle(
              fontWeight: FontWeight.w600,
              fontSize: GenerateStyleFont.headline1,
              color: context.toTheme.colorScheme.outline,
            ),
          ),
        ),
      ],
    );
  }
}
