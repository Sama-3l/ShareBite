import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/group_card.dart';
import 'package:sharebite/presentation/widgets/home_group_type.dart';
import 'package:sharebite/presentation/widgets/screen_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: AppColors.backgroundBlack,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                ScreenHeader(
                  title: "Home",
                  options: [
                    CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: const Icon(
                          CupertinoIcons.bell,
                          size: 24,
                        )),
                    CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: const Icon(
                          CupertinoIcons.archivebox,
                          size: 24,
                        )),
                  ],
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      kGap24,
                      HomeGroupType(title: "Requested Groups", children: [
                        GroupCard(
                          cardType: CardType.awaitingAccess,
                        ),
                        kGap8,
                        GroupCard(
                          cardType: CardType.awaitingAccess,
                        ),
                        kGap8,
                        GroupCard(
                          cardType: CardType.awaitingAccess,
                        ),
                      ]),
                      kGap24,
                      HomeGroupType(title: "Active Groups", children: [
                        GroupCard(
                          cardType: CardType.normal,
                        ),
                        kGap8,
                        GroupCard(
                          cardType: CardType.normal,
                        ),
                        kGap8,
                        GroupCard(
                          cardType: CardType.normal,
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
