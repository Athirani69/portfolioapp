import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Toasts {
  static void showSuccess(String message, {String? title}) {
    _show(message, Colors.green, Icons.check_circle, title: title ?? 'Success');
  }

  static void showError(String message, {String? title}) {
    _show(message, Colors.red, Icons.error, title: title ?? 'Error');
  }

  static void showInfo(String message, {String? title}) {
    _show(message, Colors.blue, Icons.info, title: title ?? '');
  }

  static void _show(
    String message,
    Color color,
    IconData icon, {
    required String title,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  title.isNotEmpty
                      ? Text(
                        title,
                        style: Get.textTheme.headlineLarge!.copyWith(
                          color: Colors.white,
                        ),
                      )
                      : const SizedBox.shrink(),
                  Text(
                    message,
                    style: Get.textTheme.labelLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        showCloseIcon: true,
        duration: duration,
        behavior: SnackBarBehavior.fixed,
      ),
    );
  }
}

///
///
///
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Toasts {
//   static void showSuccess(String message, {String? title}) {
//     _show(message, Colors.green, Icons.check_circle, title: title ?? 'Success');
//   }

//   static void showError(String message, {String? title}) {
//     _show(message, Colors.red, Icons.error, title: title ?? 'Error');
//   }

//   static void showInfo(String message, {String? title}) {
//     _show(message, Colors.blue, Icons.info, title: title ?? 'Information');
//   }

//   static void _show(
//     String message,
//     Color color,
//     IconData icon, {
//     required String title,
//     Duration duration = const Duration(seconds: 3),
//   }) {
//     Get.closeCurrentSnackbar();
//     Get.snackbar(
//       title,
//       message,
//       snackPosition: SnackPosition.TOP,
//       backgroundColor: color.withOpacity(0.8),
//       colorText: Colors.white,
//       icon: Icon(icon, color: Colors.white),
//       duration: duration,
//       isDismissible: true,
//       borderRadius: 8,
//       margin: const EdgeInsets.all(16),
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//     );
//   }

//   static void close() {
//     if (Get.isSnackbarOpen) {
//       Get.closeCurrentSnackbar();
//     }
//   }
// }
