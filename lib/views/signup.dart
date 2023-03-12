import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justiserve/constants.dart';
import 'package:justiserve/controllers/signup.controller.dart';
import 'package:justiserve/models/widgets/custom.dropdownbutton.dart';
import 'package:justiserve/models/widgets/custom.text.dart';
import 'package:justiserve/models/widgets/custom.textfield.dart';
import 'package:justiserve/models/widgets/custom_button.dart';

class SignUp extends GetView<SignUpController> {
  SignUp({Key? key}) : super(key: key);

  SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    const List roles = ["Client", "Advocate"];
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
                      text: "Create Account",
                      colour: AppColours.primaryWhite,
                      weight: FontWeight.w700,
                      size: 24.sp,
                    ),
                    CustomText(
                      text:
                          "Join us in our mission to make the world a better place.",
                      colour: AppColours.primaryWhite,
                      weight: FontWeight.w700,
                      size: 16.sp,
                    ),
                    SizedBox(height: 35.h),
                    Obx(() {
                      return Column(
                        children: signUpController.selectedItem.value ==
                                "Client"
                            ? [
                                CustomDropdownButton(
                                  items: roles
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
                                    signUpController.selectItem(newItem);
                                  },
                                  value: signUpController.selectedItem.value,
                                  // value: loginController.selectedItem.value,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: signUpController.emailAddress,
                                  hint: "Email Address",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: signUpController.password,
                                  hint: "Password",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: signUpController.confirmPassword,
                                  hint: "Confirm Password",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 38.h),
                                CustomButton(
                                  onclick: () {},
                                  child: CustomText(
                                    text: "Sign Up",
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
                                          width: 114.w,
                                          child: Divider(
                                            color: AppColours.primaryWhite,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "  or Sign up with  ",
                                        style: GoogleFonts.lato(
                                          fontSize: 14.sp,
                                          fontWeight: kFW400,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: SizedBox(
                                          width: 114.w,
                                          child: Divider(
                                            color: AppColours.primaryWhite,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 41.88.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/logos_google-icon.png"),
                                    SizedBox(width: 19.77.w),
                                    InkWell(
                                      onTap: () {},
                                      child: CustomText(
                                        text: "Sign up with Google",
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
                                  items: roles
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
                                    signUpController.selectItem(newItem);
                                  },
                                  value: signUpController.selectedItem.value,
                                  // value: loginController.selectedItem.value,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: signUpController.firmID,
                                  hint: "Firm ID",
                                  onSubmitted: (text) {},
                                  inputType: TextInputType.text,
                                  inputFormat: kTextFormatter,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: signUpController.emailAddress,
                                  hint: "Email Address",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: signUpController.password,
                                  hint: "Password",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 16.h),
                                CustomTextField(
                                  controller: signUpController.confirmPassword,
                                  hint: "Confirm Password",
                                  onSubmitted: (text) {},
                                  inputType: kEmailInput,
                                  inputFormat: kEmailFormatter,
                                ),
                                SizedBox(height: 35.h),
                                CustomButton(
                                  onclick: () {},
                                  child: CustomText(
                                    text: "Sign Up",
                                    colour: AppColours.primaryWhite,
                                    weight: kFW400,
                                    size: 16.sp,
                                  ),
                                ),
                                SizedBox(height: 40.h),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: SizedBox(
                                          width: 114.w,
                                          child: Divider(
                                            color: AppColours.primaryWhite,
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "  or Sign up with  ",
                                        style: GoogleFonts.lato(
                                          fontSize: 14.sp,
                                          fontWeight: kFW400,
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: SizedBox(
                                          width: 114.w,
                                          child: Divider(
                                            color: AppColours.primaryWhite,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 38.88.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/logos_google-icon.png"),
                                    SizedBox(width: 19.77.w),
                                    InkWell(
                                      onTap: () {},
                                      child: CustomText(
                                        text: "Sign up with Google",
                                        colour: AppColours.primaryWhite,
                                        weight: kFW400,
                                        size: 16.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                      );
                    }),
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
