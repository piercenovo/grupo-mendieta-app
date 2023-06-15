import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grupo_mendieta/src/core/constants/image_strings.dart';
import 'package:grupo_mendieta/src/core/constants/text_strings.dart';
import 'package:grupo_mendieta/src/core/utils/size_config.dart';
import 'package:grupo_mendieta/src/features/start/presentation/views/home/widgets/home_navigation_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;

    return Scaffold(
      drawer: const HomeNavigationDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset(tMenuIcon),
          ),
        ),
        title: const Text(tHomeTitle),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(tNotificationIcon),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(tAvatarIcon),
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: Center(
        child: Text(
          tHomeTitle,
          style: TextStyle(fontSize: width * 6),
        ),
      ),
    );
  }
}
