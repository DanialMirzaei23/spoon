

import '../../../packages/package.dart';

extension GenerateSizeOf on Widget{
  Widget toSpace({
    required BuildContext context,
    double top = 0,
    double right = 0,
    double left = 0,
    double bottom = 0,
  })=> Padding(padding:EdgeInsets.fromLTRB(
      MediaQuery.sizeOf(context).width *  left,
      MediaQuery.sizeOf(context).height * top,
      MediaQuery.sizeOf(context).width * right,
      MediaQuery.sizeOf(context).height * bottom
  ) ,child: this,);
  Widget toSpaceLine({
    required BuildContext context ,
    double size = .05
    })=> SizedBox(
    width: MediaQuery.sizeOf(context).width * size,
  );
  Widget toSpaceVertical({
    required BuildContext context ,
    double size = .1
    })=> SizedBox(
    height: MediaQuery.sizeOf(context).height * size,
  );
}

extension GenerateMedia on BuildContext{
   mediaQueryWidth(BuildContext context) => MediaQuery.sizeOf(context).width;
   mediaQueryHeight(BuildContext context) => MediaQuery.sizeOf(context).height;
}