import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justiserve/constants.dart';
import 'package:justiserve/controllers/login.controller.dart';
import 'package:justiserve/models/widgets/custom.dropdownbutton.dart';
import 'package:justiserve/models/widgets/custom.text.dart';
import 'package:justiserve/models/widgets/custom.textfield.dart';
import 'package:justiserve/models/widgets/custom_button.dart';

class Login extends GetView<LoginController> {
  Login({Key? key}) : super(key: key);

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    const List role = ["Client", "Advocate"];
    return Scaffold(
      body: kUnfocus(
        child: SafeArea(
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
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: loginController.emailAddress,
                                  hint: "Email Address",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: loginController.password,
                                  hint: "Password",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 66.h),
                                CustomButton(
                                  onclick: () {},
                                  child: CustomText(
                                    text: "Login",
                                    colour: AppColours.primaryWhite,
                                    weight: kFW400,
                                    size: 16.sp,
                                  ),
                                ),
                                SizedBox(height: 54.h),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: SizedBox(
                                          width: 117.w,
                                          child: Divider(
                                            color: AppColours.primaryWhite,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "  or Login with  ",
                                        style: GoogleFonts.lato(
                                          fontSize: 14.sp,
                                          fontWeight: kFW400,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: SizedBox(
                                          width: 117.w,
                                          child: Divider(
                                            color: AppColours.primaryWhite,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 49.88.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/logos_google-icon.png"),
                                    SizedBox(width: 19.77.w),
                                    InkWell(
                                      onTap: () {},
                                      child: CustomText(
                                        text: "Login with Google",
                                        colour: AppColours.primaryWhite,
                                        weight: kFW400,
                                        size: 16.sp,
                                      ),
                                    ),
                                  ],
                                ),
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
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: loginController.firmID,
                                  hint: "Firm ID",
                                  onSubmitted: (text) {},
                                  inputType: TextInputType.text,
                                  inputFormat: kTextFormatter,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: loginController.emailAddress,
                                  hint: "Email Address",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: loginController.password,
                                  hint: "Password",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 57.h),
                                CustomButton(
                                  onclick: () {},
                                  child: CustomText(
                                    text: "Login",
                                    colour: AppColours.primaryWhite,
                                    weight: kFW400,
                                    size: 16.sp,
                                  ),
                                ),
                                SizedBox(height: 50.h),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: SizedBox(
                                          width: 117.w,
                                          child: Divider(
                                            color: AppColours.primaryWhite,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "  or Login with  ",
                                        style: GoogleFonts.lato(
                                          fontSize: 14.sp,
                                          fontWeight: kFW400,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: SizedBox(
                                          width: 117.w,
                                          child: Divider(
                                            color: AppColours.primaryWhite,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 43.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/logos_google-icon.png"),
                                    SizedBox(width: 19.77.w),
                                    InkWell(
                                      onTap: () {},
                                      child: CustomText(
                                        text: "Login with Google",
                                        colour: AppColours.primaryWhite,
                                        weight: kFW400,
                                        size: 16.sp,
                                      ),
                                    ),
                                  ],
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
      ),
    );
  }
}
