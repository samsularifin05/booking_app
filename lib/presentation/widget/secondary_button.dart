import 'package:booking_app/config/config.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {Key? key,
      this.type = SeconDaryButtonType.type1,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);

  final SeconDaryButtonType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;
  @override
  Widget build(BuildContext context) {
    return type == SeconDaryButtonType.type1
        ? _type1()
        : type == SeconDaryButtonType.type2
        ? _type2()
        : _type3();
  }

  Widget _type1() {
    return SizedBox(
      width: width,
      height: 24,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: AppColor.ink01),
              backgroundColor: AppColor.ink06,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4))),
          child: Text(
            text,
            style: AppFont.componentSmall.copyWith(color: AppColor.ink01),
          )),
    );
  }

  Widget _type2() {
    return SizedBox(
      width: width,
      height: 32,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: AppColor.ink01),
              backgroundColor: AppColor.ink06,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4))),
          child: Text(
            text,
            style: AppFont.componentMediumBold.copyWith(color: AppColor.ink01),
          )),
    );
  }

  Widget _type3() {
    return SizedBox(
      width: width,
      height: 40,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: AppColor.ink01),
              backgroundColor: AppColor.ink06,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)
              )
          ),
          child: Text(
            text,
            style: AppFont.componentLarge.copyWith(color: AppColor.ink01),
          )),
    );
  }
}

enum SeconDaryButtonType { type1, type2, type3 }
