import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

import '../../../common/constants/colors.dart';
import '../../../common/utils/dev_utils.dart';
import '../../movies_list/ui/pages/movies_page.dart';
import '../widgets/app_nav_bar.dart';
import '../widgets/home_body_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.qBackground,
      appBar: AppBar(
        backgroundColor: AppColors.qBackground,
        shadowColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(const Size(28, 28)),
            child: SvgPicture.asset(
              pathForSvgAsset('logo'),
              color: AppColors.qPrimary,
            ),
          ),
        ),
      ),
      body: const HomeBodyView(),
      bottomNavigationBar: const AppNavBar(),
    );
  }
}
