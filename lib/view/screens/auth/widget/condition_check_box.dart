import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/controller/auth_controller.dart';
import 'package:sixam_mart/helper/route_helper.dart';

class ConditionCheckBox extends StatelessWidget {
  final AuthController authController;
  ConditionCheckBox({@required this.authController});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        activeColor: Theme.of(context).primaryColor,
        value: authController.acceptTerms,
        onChanged: (bool isChecked) => authController.toggleTerms(),
      ),
      // Text('i_agree_with'.tr, style: robotoRegular),
      Expanded(
        child: RichText(
          text: TextSpan(
            text: '${'i_agree_with'.tr} ',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                .copyWith(fontWeight: FontWeight.w500),
            children: [
              TextSpan(
                  text: 'terms_conditions'.tr,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(
                          RouteHelper.getHtmlRoute('terms-and-condition'));
                    },
                  style: Theme.of(context).textTheme.bodyMedium.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.underline,
                      )),
              TextSpan(
                text: ' ${'and'.tr} ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              TextSpan(
                  text: 'privacy_policy'.tr,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(RouteHelper.getHtmlRoute('privacy-policy'));
                    },
                  style: Theme.of(context).textTheme.bodyMedium.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.underline,
                      )),
            ],
          ),
        ),
      ),
    ]);
  }
}
