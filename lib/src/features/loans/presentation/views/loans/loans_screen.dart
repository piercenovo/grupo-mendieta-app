import 'package:flutter/material.dart';
import 'package:grupo_mendieta/src/core/constants/text_strings.dart';
import 'package:grupo_mendieta/src/core/utils/size_config.dart';

class LoansScreen extends StatelessWidget {
  const LoansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;

    return Scaffold(
      appBar: AppBar(
        title: const Text(tLoansTitle),
      ),
      body: Center(
        child: Text(
          tLoansTitle,
          style: TextStyle(fontSize: width * 6),
        ),
      ),
    );
  }
}
