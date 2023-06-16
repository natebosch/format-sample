import 'package:bank_management/FirebaseFunctions/FirebaseFun.dart';
import 'package:bank_management/provider/LoginProvider.dart';
import 'package:bank_management/ui/Widgets/CustomPaint.dart';
import 'package:bank_management/ui/Login/loginWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../views/HomePage.dart';
import 'AddDetails.dart';

class VerifyOtp extends StatefulWidget {
  final String phoneNumber;

  VerifyOtp(this.phoneNumber);

  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  var fkey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();
  bool isLoading = false;

  void enterOTP(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context, listen: false);
    setState(() {
      isLoading = true;
    });
    print("Validating OTP");
    signIn(otpController.text, provider.getVerificationId).then((value) {
      if (value) {
        isUserPresent().then((value1) {
          if (value1) {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ));
          } else {
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return AddDetails(widget.phoneNumber);
              },
            ));
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: fkey,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Custompaint(),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: LoginWidget(
                    title: 'Enter\nOTP',
                    subtitle: 'Verify-OTP',
                    isLoading: isLoading,
                    textField: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter OTP',
                        hintText: 'XXXXXX',
                      ),
                      controller: otpController,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.length != 6) {
                          return 'Invalid OTP';
                        }
                        return null;
                      },
                    ),
                    onTap: () {
                      if (fkey.currentState.validate()) {
                        print("Verifying OTP");
                        enterOTP(context);
                      }
                    },
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
