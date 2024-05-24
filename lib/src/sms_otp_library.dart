import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmsOtp extends StatefulWidget {
  const SmsOtp(
      {Key? key,
      this.title = "Verification",
      this.titleColor,
      this.titleFontSize,
      this.titleFontWeight,
      this.textMargin = 40,
      this.text = "Enter the code sent to your number",
      this.textColor,
      this.textFontSize,
      this.phoneNumberMargin = 40,
      this.phoneNumber = "+90 123 456 789",
      this.phoneNumberColor,
      this.phoneNumberFontSize,
      this.pinHeight = 68.0,
      this.pinWidth = 64.0,
      this.btnMargin = 40,
      required this.btnOnPressed,
      this.btnText = "Enter",
      this.btnTextColor,
      this.btnTextFontSize,
      this.durationTimeMargin = 40,
      this.durationTime = 3,
      required this.durationTimeOnEnd,
      this.durationTimeTextColor,
      this.durationTimeTextFontWeight,
      this.durationTimeTextFontSize})
      : super(key: key);

  final String title;
  final Color? titleColor;
  final double? titleFontSize;
  final FontWeight? titleFontWeight;
  final double textMargin;
  final String text;
  final Color? textColor;
  final double? textFontSize;
  final double phoneNumberMargin;
  final String phoneNumber;
  final Color? phoneNumberColor;
  final double? phoneNumberFontSize;
  final double pinHeight;
  final double pinWidth;
  final double btnMargin;
  final Function btnOnPressed;
  final String btnText;
  final Color? btnTextColor;
  final double? btnTextFontSize;
  final double durationTimeMargin;
  final int durationTime;
  final Function durationTimeOnEnd;
  final Color? durationTimeTextColor;
  final FontWeight? durationTimeTextFontWeight;
  final double? durationTimeTextFontSize;

  @override
  SmsOtpState createState() => SmsOtpState();
}

class SmsOtpState extends State<SmsOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: TextStyle(
                color: widget.titleColor ?? Colors.black,
                fontSize: widget.titleFontSize ?? 28,
                fontWeight: widget.titleFontWeight ?? FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: widget.textMargin),
            child: Text(
              widget.text,
              style: TextStyle(
                  color: widget.textColor ?? Colors.grey,
                  fontSize: widget.textFontSize ?? 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: widget.phoneNumberMargin),
            child: Text(
              widget.phoneNumber,
              style: TextStyle(
                  color: widget.phoneNumberColor ?? Colors.black,
                  fontSize: widget.phoneNumberFontSize ?? 18),
            ),
          ),
          Form(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: widget.pinHeight,
                width: widget.pinWidth,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  onSaved: (pin1) {},
                  decoration: const InputDecoration(hintText: "0"),
                  style: Theme.of(context).textTheme.titleLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: widget.pinHeight,
                width: widget.pinWidth,
                child: TextFormField(
                  onSaved: (pin2) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: const InputDecoration(hintText: "0"),
                  style: Theme.of(context).textTheme.titleLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: widget.pinHeight,
                width: widget.pinWidth,
                child: TextFormField(
                  onSaved: (pin3) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: const InputDecoration(hintText: "0"),
                  style: Theme.of(context).textTheme.titleLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                height: widget.pinHeight,
                width: widget.pinWidth,
                child: TextFormField(
                  onSaved: (pin4) {},
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: const InputDecoration(hintText: "0"),
                  style: Theme.of(context).textTheme.titleLarge,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.symmetric(vertical: widget.btnMargin),
            child: TextButton(
              onPressed: () {
                widget.btnOnPressed;
              },
              child: Text(
                widget.btnText,
                style: TextStyle(
                    color: widget.btnTextColor ?? Colors.black,
                    fontSize: widget.btnTextFontSize ?? 18),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: widget.durationTimeMargin),
            child: TweenAnimationBuilder<Duration>(
                duration: Duration(minutes: widget.durationTime),
                tween: Tween(
                    begin: Duration(minutes: widget.durationTime),
                    end: Duration.zero),
                onEnd: () {
                  widget.durationTimeOnEnd;
                },
                builder: (BuildContext context, Duration value, Widget? child) {
                  final minutes = value.inMinutes;
                  final seconds = value.inSeconds % 60;
                  return Text('$minutes:$seconds',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: widget.durationTimeTextColor ?? Colors.black,
                          fontWeight: widget.durationTimeTextFontWeight ??
                              FontWeight.bold,
                          fontSize: widget.durationTimeTextFontSize ?? 30));
                }),
          ),
        ],
      ),
    );
  }
}
