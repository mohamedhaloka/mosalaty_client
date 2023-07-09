import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/base/custom_button.dart';

void ensureUserToUseYourPhotos({void Function() pickImage}) =>
    Get.dialog(AlertDialog(
      scrollable: true,
      title: Icon(
        Icons.info,
        color: Get.theme.primaryColor,
        size: 35,
      ),
      content: Text(
        'use_of_images_hint'.tr,
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: CustomButton(
                buttonText: 'ok'.tr,
                fontColor: Colors.black,
                bgColor: Colors.grey[300],
                onPressed: () {
                  Get.back();
                  pickImage();
                },
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: CustomButton(
                buttonText: 'back'.tr,
                onPressed: () {
                  Get.back();
                },
              ),
            ),
          ],
        )
      ],
    ));
