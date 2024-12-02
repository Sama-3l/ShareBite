import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:sharebite/assets/svgs/svgs.dart';
import 'package:sharebite/constants/colors.dart';
import 'package:sharebite/constants/extensions.dart';
import 'package:sharebite/constants/sizes.dart';

class ChooseAvatar extends StatelessWidget {
  const ChooseAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Character Avatar",
          style: context.labelWhite,
        ),
        kGap8,
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.circular(8),
          ),
          height: 96,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Iconify(
                  boy1,
                  size: double.infinity,
                ),
              ),
              kGap8,
              Expanded(
                child: Iconify(
                  boy2,
                  size: double.infinity,
                ),
              ),
              kGap8,
              Expanded(
                child: Iconify(
                  boy3,
                  size: double.infinity,
                ),
              ),
              kGap8,
              Expanded(
                child: Iconify(
                  girl1,
                  size: double.infinity,
                ),
              ),
              kGap8,
              Expanded(
                child: Iconify(
                  girl2,
                  size: double.infinity,
                ),
              ),
              kGap8,
              Expanded(
                child: Iconify(
                  girl3,
                  size: double.infinity,
                ),
              ),
            ],
          ),
        ),
        kGap8,
        Align(
          alignment: Alignment.centerRight,
          child: Text("These are the free illustrations we could find. Don’t sue",
              style: context.note.copyWith(
                color: AppColors.primaryWhite.withOpacity(0.5),
              )),
        )
      ],
    );
  }
}
