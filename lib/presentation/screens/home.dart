import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/enum.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/group_card.dart';

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
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Home",
                          style: context.title,
                        ),
                        const Spacer(),
                        IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: 24,
                            onPressed: () {},
                            icon: const Icon(
                              CupertinoIcons.bell,
                            )),
                        IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: 24,
                            onPressed: () {},
                            icon: const Icon(
                              CupertinoIcons.archivebox,
                            )),
                      ],
                    ),
                    kGap16,
                  ],
                ),
                Expanded(
                  child: ListView(children: [
                    GroupCard(),
                    kGap8,
                    GroupCard(
                      cardType: CardType.acceptedMulitple,
                    ),
                    kGap8,
                    GroupCard(
                      cardType: CardType.adminReported,
                    ),
                    kGap8,
                    GroupCard(
                      cardType: CardType.awaitingAccess,
                    ),
                    kGap8,
                    GroupCard(
                      cardType: CardType.awaitingDelivery,
                    ),
                    kGap8,
                    GroupCard(
                      cardType: CardType.closed,
                    ),
                    kGap8,
                    GroupCard(
                      cardType: CardType.createdByUser,
                    ),
                    kGap8,
                    GroupCard(
                      cardType: CardType.waitingForOrder,
                    ),
                    kGap8,
                    GroupCard(
                      cardType: CardType.leave,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
