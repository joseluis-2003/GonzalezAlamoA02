import 'package:flutter/material.dart';

class ButtonCount extends StatelessWidget {
  final String text;
  final double fontsize;
  final VoidCallback onPressed;
  const ButtonCount(
      {super.key,
      required this.text,
      required this.fontsize,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 40,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: const Color(0xFF1E1E1E),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'PoppinsBold',
              fontSize: fontsize,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
