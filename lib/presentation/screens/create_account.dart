import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/widgets/choose_avatar.dart';
import 'package:sharebite/presentation/widgets/otp_textfield.dart';
import 'package:sharebite/presentation/widgets/screen_header.dart';
import 'package:sharebite/presentation/widgets/textfield_element.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({super.key});

  final List<TextEditingController> otpController = List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.backgroundBlack,
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ScreenHeader(title: "Create Account", options: []),
                  kGap24,
                  Expanded(
                    child: ListView(
                      children: [
                        const AddPageElement(
                          title: "Username",
                          placeholder: "Samael",
                          icon: CupertinoIcons.person,
                        ),
                        kGap16,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const AddPageElement(
                              title: "Phone Number",
                              placeholder: "6386291080",
                              icon: CupertinoIcons.phone,
                            ),
                            kGap8,
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.52,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  for (int i = 0; i < otpController.length; i++) ...[
                                    Expanded(child: OtpTextfield(controller: otpController[i])),
                                    if (i < otpController.length - 1) kGap4, // Add gap except after the last item
                                  ],
                                  kGap8,
                                  CupertinoButton(
                                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                      borderRadius: BorderRadius.circular(4),
                                      minSize: 0,
                                      color: AppColors.secondaryWhite,
                                      child: Text(
                                        "Get OTP",
                                        style: context.label,
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                            )
                          ],
                        ),
                        kGap16,
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Row(
                              children: [
                                Expanded(
                                  child: AddPageElement(
                                    title: "Hostel",
                                    placeholder: "Select",
                                    iconify: true,
                                    iconifyWidget: Iconify(
                                      building,
                                      size: 16,
                                    ),
                                  ),
                                ),
                                kGap16,
                                Expanded(
                                  child: AddPageElement(
                                    title: "Room Number",
                                    icon: CupertinoIcons.number,
                                    placeholder: "1117",
                                  ),
                                ),
                              ],
                            ),
                            kGap4,
                            Text("We will maybe verify this so better not lie<3",
                                style: context.note.copyWith(
                                  color: AppColors.actionOrange,
                                ))
                          ],
                        ),
                        kGap16,
                        const ChooseAvatar()
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
                onPressed: () {},
                child: const Icon(
                  CupertinoIcons.check_mark,
                  color: AppColors.backgroundBlack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
