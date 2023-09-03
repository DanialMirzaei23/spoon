import 'package:spoon/application/presentation/modules/extension/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';
import '../../../packages/package.dart';

class GenerateListTile extends StatelessWidget {
  const GenerateListTile({
    super.key,
    required this.image,
    required this.title,
    this.trailingText = '',
    this.isBold = true,
     this.icon = '',
     // this.onTapTrailingText
  });

  final String image, title, trailingText, icon;
  final bool isBold;
  // final void Function() ? onTapTrailingText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: isBold ? SvgGenerated(
          generate: Generate.asset,
          router: image,
          width: context.mediaQueryWidth(context) * .025,
          height: context.mediaQueryHeight(context) * .028) : SvgGenerated(
          generate: Generate.asset,
          router: image,
          width: context.mediaQueryWidth(context) * .025,
          height: context.mediaQueryHeight(context) * .025) ,
      // onTap: onTap,
      // subtitle: "sub".toText(context: context),
      title:isBold ?  title.toText(
          context: context,
          fontSize: GenerateStyleFont.body6,
          fontWeight: FontWeight.w800,
          color: GenerateDataColors.dark_neutral.toHex) : title.toText(
          context: context,
          fontSize: GenerateStyleFont.body6,
          color: GenerateDataColors.grey_neutral.toHex),
      trailing: isBold
          ? trailingText.toText(
              context: context,
              fontSize: GenerateStyleFont.body6,
              fontWeight: FontWeight.w500,
              color: GenerateDataColors.orange_primary.toHex).generateButton(onTap:(){})
          : SvgGenerated(
              generate: Generate.asset,
              router: icon,
              width: context.mediaQueryWidth(context) * .025,
              height: context.mediaQueryHeight(context) * .025),
    );
  }
}

class GenerateProfileTile extends StatelessWidget {
  const GenerateProfileTile({super.key, required this.nameProfile, required this.image});
  final String nameProfile;
  final String image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgGenerated(generate: Generate.asset, router: image, width: context.mediaQueryWidth(context)*.05, height: context.mediaQueryHeight(context)*.05),
      title:  nameProfile.toText(
          context: context,
          fontWeight: FontWeight.bold,
          fontSize: GenerateStyleFont.headline2),
      
    );
  }
}

