import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/add_group_options.dart';
import 'package:sharebite/presentation/widgets/textfield_element.dart';

class AddNewGroup extends StatelessWidget {
  const AddNewGroup({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.backgroundBlack,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: context.title,
                  ),
                  const Spacer(),
                  CupertinoButton(
                      padding: EdgeInsets.zero,
                      color: AppColors.primaryWhite,
                      borderRadius: BorderRadius.circular(40),
                      child: const Icon(
                        CupertinoIcons.check_mark,
                        color: AppColors.backgroundBlack,
                      ),
                      onPressed: () {})
                ],
              ),
              kGap24,
              Expanded(
                child: ListView(
                  children: const [
                    AddPageElement(
                      title: "Name",
                      icon: CupertinoIcons.doc,
                      placeholder: "Group Name",
                    ),
                    kGap16,
                    Row(
                      children: [
                        Expanded(
                          child: AddPageElement(
                            title: "Group Size",
                            icon: CupertinoIcons.person_3,
                            placeholder: "9",
                          ),
                        ),
                        kGap16,
                        Expanded(
                          child: AddPageElement(
                            title: "Deadline",
                            icon: CupertinoIcons.clock,
                            placeholder: "14:30",
                          ),
                        ),
                      ],
                    ),
                    kGap16,
                    Row(
                      children: [
                        Expanded(
                          child: AddPageElement(
                            title: "Platform",
                            icon: CupertinoIcons.square_stack_3d_up,
                            placeholder: "Eatsure",
                          ),
                        ),
                        kGap16,
                        Expanded(
                          child: AddPageElement(
                            title: "Food Outlet",
                            placeholder: "The Good Bowl",
                            iconify: true,
                            iconifyWidget: Iconify(
                              building,
                              size: 16,
                              color: AppColors.primaryWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                    kGap16,
                    AddPageElement(
                      title: "Contribution amount",
                      placeholder: "345",
                      iconify: true,
                      iconifyWidget: Iconify(
                        rupee,
                        size: 16,
                        color: AppColors.primaryWhite,
                      ),
                    ),
                    kGap16,
                    AddGroupOptions(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
