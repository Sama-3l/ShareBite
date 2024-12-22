import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/group_card.dart';
import 'package:sharebite/presentation/widgets/home_group_type.dart';
import 'package:sharebite/presentation/widgets/screen_header.dart';

class ArchivesPage extends StatelessWidget {
  const ArchivesPage({super.key});

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
                          CupertinoIcons.archivebox,
                          color: AppColors.actionOrange,
                          size: 24,
                        )),
                  ],
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      kGap24,
                      HomeGroupType(children: [
                        GroupCard(
                          cardType: CardType.closed,
                        ),
                        kGap8,
                        GroupCard(
                          cardType: CardType.closed,
                        ),
                        kGap8,
                        GroupCard(
                          cardType: CardType.closed,
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
