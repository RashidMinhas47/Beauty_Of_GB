import 'package:beauty_of_gb/core/constants/color_schema.dart';
import 'package:flutter/material.dart';

class CTapButton extends StatelessWidget {
  const CTapButton(this.label,{
    super.key,this.onPressed,this.bgColor, this.fgColor
  });
  final VoidCallback? onPressed;
  final String label;
  final Color? bgColor;
  final Color? fgColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:  Theme.of(context).textButtonTheme.style!.copyWith(
        backgroundColor: WidgetStatePropertyAll(bgColor?? kWhiteColor),
        foregroundColor: WidgetStatePropertyAll(fgColor?? kBlackColor),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
class CTapButtonTrans extends StatelessWidget {
  const CTapButtonTrans(this.label,{
    super.key,this.onPressed,
    this.icon,
  });
  final VoidCallback? onPressed;
  final String label;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: Theme.of(context).textButtonTheme.style!.copyWith(
        backgroundColor: WidgetStatePropertyAll( kWhiteColor.withOpacity(0)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           icon ?? SizedBox.shrink(),
           Text(label, style:Theme.of(context).textTheme.titleMedium),
         ],
      ),
    );
  }
}