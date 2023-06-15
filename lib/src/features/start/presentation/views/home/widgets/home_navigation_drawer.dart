import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grupo_mendieta/src/core/constants/colors.dart';
import 'package:grupo_mendieta/src/core/constants/image_strings.dart';
import 'package:grupo_mendieta/src/core/constants/text_strings.dart';
import 'package:grupo_mendieta/src/core/utils/size_config.dart';

class HomeNavigationDrawer extends StatelessWidget {
  const HomeNavigationDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.blockSizeH!;
    double height = SizeConfig.blockSizeV!;

    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: width * 5,
            vertical: height * 1,
          ),
          child: Column(
            children: [
              Container(
                width: width * 100,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                  left: width * 3.5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hola',
                      style: TextStyle(
                        color: tSecondaryColorDark,
                        fontSize: width * 7,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Victor',
                      style: TextStyle(
                        color: tSecondaryColorDark,
                        fontSize: width * 7.4,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: height * 2),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.5,
                        vertical: height * 2,
                      ),
                      decoration: BoxDecoration(
                        color: tExtraLightColorThree.withOpacity(0.5),
                        border:
                            Border.all(width: 1, color: tLightGrayColorThree),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: tPrimaryColor,
                                  child: SvgPicture.asset(tProfileIcon),
                                ),
                                SizedBox(height: height * 0.5),
                                Text(
                                  'Datos de\n perfil',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: width * 3.3),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: tPrimaryColor,
                                  child: SvgPicture.asset(tPasswordIcon),
                                ),
                                SizedBox(height: height * 0.5),
                                Text(
                                  'Cambiar\n contraseña',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: width * 3.3),
                                )
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 1),
              Column(
                children: [
                  Wrap(
                    runSpacing: -12,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 3.5, vertical: height * 1.5),
                        child: Title(
                            color: tDarkGrayColorTwo,
                            child: Text(
                              tSalesTitle,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: width * 4.2,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(tPreEvaluationIcon),
                        title: const Text(tPreEvaluationTitle,
                            style: TextStyle(
                              color: tDarkGrayColorThree,
                            )),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(tCustomersIcon),
                        title: const Text(tCustomersTitle,
                            style: TextStyle(
                              color: tDarkGrayColorThree,
                            )),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(tVisitsIcon),
                        title: const Text(tVisitsTitle,
                            style: TextStyle(
                              color: tDarkGrayColorThree,
                            )),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(tTeamsIcon),
                        title: const Text(tTeamsTitle,
                            style: TextStyle(
                              color: tDarkGrayColorThree,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 1),
                  Wrap(
                    runSpacing: -8,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 3.5, vertical: height * 1.5),
                        child: Title(
                            color: tDarkGrayColorTwo,
                            child: Text(
                              tLoansTitle,
                              style: TextStyle(
                                fontSize: width * 4.2,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(tPreEvaluationIcon),
                        title: const Text(tPreEvaluationTitle,
                            style: TextStyle(
                              color: tDarkGrayColorThree,
                            )),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(tCustomersIcon),
                        title: const Text(tCustomersTitle,
                            style: TextStyle(
                              color: tDarkGrayColorThree,
                            )),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(tVisitsIcon),
                        title: const Text(tVisitsTitle,
                            style: TextStyle(
                              color: tDarkGrayColorThree,
                            )),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(tTeamsIcon),
                        title: const Text(tTeamsTitle,
                            style: TextStyle(
                              color: tDarkGrayColorThree,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 1),
                  ListTile(
                    leading: SvgPicture.asset(tLogOutIcon),
                    title: const Text(tLogOutTitle,
                        style: TextStyle(
                          color: tDarkGrayColorThree,
                        )),
                  ),
                  SizedBox(height: height * 1),
                  SizedBox(
                    width: width * 100,
                    child: Text(
                      'Versión 7.49.20230510-72708',
                      style: TextStyle(
                          color: tDarkGrayColorThree, fontSize: width * 3),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: height * 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
