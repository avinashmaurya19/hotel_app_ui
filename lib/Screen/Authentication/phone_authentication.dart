import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../GlobalComponents/button_global.dart';
import '../../GlobalComponents/otp_form.dart';
import '../../constant.dart';
import 'add_info.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({Key? key}) : super(key: key);

  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, bottom: 20.0, top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Confirm Your Email',
                style: kTextStyle.copyWith(
                  color: kTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter the code we have sent by email to -',
                          style: kTextStyle.copyWith(color: kGreyTextColor),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          'abdulkorim@gmail.com',
                          style: kTextStyle.copyWith(
                            color: const Color(0xFFFF8748),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const OtpForm(),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'haven\'t received a code?',
                                style: kTextStyle.copyWith(
                                    color: kGreyTextColor, fontSize: 14.0),
                              ),
                              Text(
                                'Reload',
                                style: kTextStyle.copyWith(
                                  color: const Color(0xFFFF8748),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        ButtonGlobal(
                          buttontext: 'Continue',
                          onPressed: () {
                            const AddInfo().launch(context);
                          },
                          buttonDecoration:
                              kButtonDecoration.copyWith(color: kMainColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
