
import 'package:spoon/application/presentation/modules/mixin/exp_main_router.dart';
import 'package:spoon/application/presentation/modules/widget/exp_main_router.dart';

import '../../../packages/package.dart';

mixin GenerateDataListDrawer{
  static List<Widget> menulist=
  [
    GenerateListTile(image: GenerateDataImages.card_drawer, title: "My Orders", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.return_drawer, title: "My Orders", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.info_drawer, title: "My Orders", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.wallet_drawer, title: "My Orders", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.letter_drawer, title: "My Orders", icon: GenerateDataImages.arrow_drawer),
    GenerateListTile(image: GenerateDataImages.chat_drawer, title: "My Orders", icon: GenerateDataImages.arrow_drawer),
  ];

}