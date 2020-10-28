import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback callback;
  final Color bgColor;
  final Color txtColor;
  final String btnText;

  const AppButton(
      {Key key, this.callback, this.bgColor, this.txtColor, this.btnText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(48, 12, 48, 12),
      child: MaterialButton(
        onPressed: () => callback(),
        height: 56,
        color: bgColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: bgColor)),
        minWidth: double.infinity,
        child: Text(
          btnText,
          style: TextStyle(color: txtColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
