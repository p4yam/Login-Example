import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        width: width / 5,
        height: width / 5,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(0, 3))
            ]),
        child: Center(
          child: Icon(
            Icons.airplanemode_active,
            color: Color(0xffe17055),
            size: width / 8,
          ),
        ),
      ),
    );
  }
}
