import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constants/appcolors.dart';
import 'package:portfolio/app/routes/app_pages.dart';


class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.3,
      titleSpacing: 0,
      title: Row(
        children: [
          Gap(30),
          Transform.scale(
            scale: 2, // 30% larger
            child: Image.asset('assets/images/tqblog.png', height: 50),
          ),

          const Spacer(),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
            style: TextButton.styleFrom(
              foregroundColor: AppColors.primaryColor,
            ),
            child: const Text(
              "Sign In",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const Gap(8),
        ],
      ),
    );
  }
}
