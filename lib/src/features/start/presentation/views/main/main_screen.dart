import 'package:flutter/material.dart';

import 'package:grupo_mendieta/src/core/constants/colors.dart';
import 'package:grupo_mendieta/src/core/constants/image_strings.dart';
import 'package:grupo_mendieta/src/core/constants/text_strings.dart';

import 'package:grupo_mendieta/src/core/utils/size_config.dart';

import 'package:grupo_mendieta/src/features/box/presentation/views/box/box_screen.dart';
import 'package:grupo_mendieta/src/features/charges/presentation/views/charges/charges_screen.dart';
import 'package:grupo_mendieta/src/features/loans/presentation/views/loans/loans_screen.dart';
import 'package:grupo_mendieta/src/features/sales/presentation/views/sales/sales_screen.dart';
import 'package:grupo_mendieta/src/features/start/presentation/views/home/home_screen.dart';

import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final pages = [
    const HomeScreen(),
    const SalesScreen(),
    const LoansScreen(),
    const ChargesScreen(),
    const BoxScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: currentIndex,
            children: pages,
          )
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: tLightGrayColorThree,
              width: 0.1,
            ),
          ),
        ),
        child: _buildBottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    SizeConfig().init(context);
    double height = SizeConfig.blockSizeV!;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index) => setState(() {
        currentIndex = index;
      }),
      selectedFontSize: 10,
      selectedLabelStyle: TextStyle(
        height: height * 0.22,
        fontWeight: FontWeight.bold,
      ),
      selectedItemColor: tPrimaryColor,
      unselectedItemColor: tSecondaryColor,
      unselectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(tMainHomeIcon),
          activeIcon: SvgPicture.asset(tMainHomeActiveIcon),
          label: tHomeTitle,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(tMainSalesIcon),
          activeIcon: SvgPicture.asset(tMainSalesActiveIcon),
          label: tSalesTitle,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(tMainLoansIcon),
          activeIcon: SvgPicture.asset(tMainLoansActiveIcon),
          label: tLoansTitle,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(tMainChargesIcon),
          activeIcon: SvgPicture.asset(tMainChargesActiveIcon),
          label: tChargesTitle,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(tMainBoxIcon),
          activeIcon: SvgPicture.asset(tMainBoxActiveIcon),
          label: tBoxTitle,
        ),
      ],
    );
  }
}
