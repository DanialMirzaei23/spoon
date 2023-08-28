
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

mixin GenerateDataListDrawer{
  static List<Widget> menulist=
  [
    GenerateListTile(image: GenerateDataImages.card_drawer, title: "My Orders", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.return_drawer, title: "My returns", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.info_drawer, title: "Personal details", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.wallet_drawer, title: "Payment methods", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.letter_drawer, title: "Newsletter", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.chat_drawer, title: "Chat", icon: GenerateDataImages.arrow_drawer),
  ];

}