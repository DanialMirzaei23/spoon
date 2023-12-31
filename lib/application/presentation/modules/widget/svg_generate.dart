import '../../../packages/package.dart';

enum Generate {asset , network , image}

class SvgGenerated extends StatelessWidget {
  const SvgGenerated({super.key,
    required this.generate,
    required this.router,
    this.alignment = Alignment.center,
    required this.width,
    required this.height,
    this.boxFit = BoxFit.cover,  this.radius = 15.0
  });
  final Generate generate;
  final String router ;
  final Alignment alignment ;
  final double width,height ,radius;
  final BoxFit boxFit ;
  @override
  Widget build(BuildContext context) {
    return generate == Generate.asset ? SvgPicture.asset(router ,alignment:alignment ,width:width ,height:height ,fit:boxFit,)  :
    generate == Generate.network ? SvgPicture.network(router ,alignment:alignment ,width:width ,height:height ,fit:boxFit) :
    generate == Generate.image ? ClipRRect(borderRadius: BorderRadius.circular(radius),child: Image(image: AssetImage(router),fit: boxFit,width: width,height: height,alignment: alignment,),) :
    SvgPicture.asset(router ,alignment:alignment ,width:width ,height:height ,fit:boxFit) ;
  }
}
