import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/pages/add_new_group.dart';
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
          child: Stack(
            children: [
              Padding(
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
                          ]),
                          kGap24,
                          HomeGroupType(title: "Accepted Group", children: [
                            GroupCard(
                              cardType: CardType.waitingForOrder,
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 32,
                right: 16,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.primaryWhite,
                  padding: const EdgeInsets.all(16),
                  onPressed: () => Navigator.of(context, rootNavigator: true).push(CupertinoPageRoute(builder: (context) => AddNewGroup(title: "Add New Group"))),
                  child: const Icon(
                    CupertinoIcons.add,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
