import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/Screen/Authentication/phone_authentication.dart';
import 'package:hotel_booking/constant.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../GlobalComponents/button_global.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, bottom: 20.0, top: 40.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an account',
                  style: kTextStyle.copyWith(
                      color: kTitleColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Let’s us know what your name,  email, \n and your password',
                  style: kTextStyle.copyWith(color: kGreyTextColor),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                FormField(
                  builder: (FormFieldState<dynamic> field) {
                    return InputDecorator(
                      decoration: kInputDecoration.copyWith(
                        contentPadding:
                            const EdgeInsets.only(left: 10.0, right: 8.0),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Country/Region',
                        labelStyle: kTextStyle.copyWith(color: kTitleColor),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: CountryCodePicker(
                          padding: EdgeInsets.zero,
                          onChanged: print,
                          initialSelection: 'BD',
                          showFlag: false,
                          showCountryOnly: true,
                          showOnlyCountryWhenClosed: true,
                          showDropDownButton: true,
                          alignLeft: true,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20.0),
                AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  decoration: kInputDecoration.copyWith(
                    labelText: 'Email Address*',
                    hintText: 'abdulkorim@gmail.com',
                    labelStyle: kTextStyle.copyWith(color: kTitleColor),
                    hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                  ),
                ),
                const SizedBox(height: 20.0),
                AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: kInputDecoration.copyWith(
                    labelText: 'Password*',
                    hintText: '********',
                    labelStyle: kTextStyle.copyWith(color: kTitleColor),
                    hintStyle: kTextStyle.copyWith(color: kGreyTextColor),
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Confirm your email. Standard message and date \nretes apply.',
                  style: kTextStyle.copyWith(color: kTitleColor),
                ),
                const SizedBox(height: 40.0),
                ButtonGlobal(
                  buttontext: 'Continue',
                  buttonDecoration: kButtonDecoration.copyWith(color: kMainColor),
                  onPressed: () => const PhoneAuth().launch(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
