<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

The sms_otp package contains a number of useful containers that can help you with building sms/pin code screens for your app. The package contains container for title of pin screen, description text, phone number and pins container.

## Features

![](https://raw.githubusercontent.com/Casm9/my-github-storage/main/sms-otp-pub.gif)


## Getting started

```dart
class SmsOtp extends StatelessWidget {
  const SmsOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SmsOtp(
            title: "Verification",
            textMargin: 40,
            text: "Enter the code sent to your number",
            phoneNumberMargin: 40,
            phoneNumber: "+90 123 456 789",
            pinHeight: 68.0,
            pinWidth: 64.0,
            btnMargin: 40,
            btnOnPressed: () => btnOnPressedFunction,
            btnText: "Enter",
            durationTimeMargin: 40,
            durationTime: 3,
            durationTimeOnEnd: () => durationTimeOnEndFunction
        ),
      ),
    );
  }
}
```