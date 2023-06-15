import 'package:flutter/material.dart';
import 'package:grupo_mendieta/src/core/constants/text_strings.dart';
import 'package:grupo_mendieta/src/core/utils/size_config.dart';

class BoxScreen extends StatelessWidget {
  const BoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;

    return Scaffold(
      appBar: AppBar(
        title: const Text(tBoxTitle),
      ),
      body: Center(
        child: Text(
          tBoxTitle,
          style: TextStyle(fontSize: width * 6),
        ),
      ),
    );
  }
}
