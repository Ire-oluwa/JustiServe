import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:justiserve/constants.dart';
import 'package:justiserve/controllers/login.controller.dart';
import 'package:justiserve/models/custom.dropdownbutton.dart';
import 'package:justiserve/models/custom.text.dart';

class Login extends GetView<LoginController> {
  Login({Key? key}) : super(key: key);

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    const List role = ["Client", "Advocate"];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 37.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Welcome Back",
                    colour: AppColours.primaryWhite,
                    weight: FontWeight.w700,
                    size: 24.sp,
                  ),
                  CustomText(
                    text: "Glad to see you!",
                    colour: AppColours.primaryWhite,
                    weight: FontWeight.w400,
                    size: 16.sp,
                  ),
                  SizedBox(height: 57.h),
                  Obx(
                    () => Column(
                      children: loginController.selectedItem.value == "Client"
                          ? [
                              CustomDropdownButton(
                                items: role
                                    .map(
                                      (e) => DropdownMenuItem<String>(
                                        value: e.toString(),
                                        child: CustomText(
                                          text: e,
                                          size: 16.sp,
                                          weight: FontWeight.w400,
                                          colour: AppColours.primaryWhite,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onSelected: (newItem) {
                                  loginController.selectItem(newItem);
                                },
                                value: loginController.selectedItem.value,
                                // value: loginController.selectedItem.value,
                              ),
                              TextField(),
                            ]
                          : [
                              CustomDropdownButton(
                                items: role
                                    .map(
                                      (e) => DropdownMenuItem<String>(
                                        value: e.toString(),
                                        child: CustomText(
                                          text: e,
                                          size: 16.sp,
                                          weight: FontWeight.w400,
                                          colour: AppColours.primaryWhite,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onSelected: (newItem) {
                                  loginController.selectItem(newItem);
                                },
                                value: loginController.selectedItem.value,
                                // value: loginController.selectedItem.value,
                              ),
                            ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
