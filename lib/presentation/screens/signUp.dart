import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';
import 'package:sharebite/presentation/screens/create_account.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: AppColors.backgroundBlack,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Welcome to ShareBite",
                  style: context.biggestTitle,
                ),
                kGap4,
                Text(
                  "Sign in to access your account",
                  style: context.body,
                ),
                kGap40,
                CupertinoButton(
                    color: AppColors.primaryWhite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Iconify(
                          google,
                          size: 32,
                        ),
                        kGap8,
                        Text(
                          "Sign in using Google",
                          style: context.buttonText,
                        )
                      ],
                    ),
                    onPressed: () => Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const CreateAccount())))
              ],
            ),
          ),
        )));
  }
}
