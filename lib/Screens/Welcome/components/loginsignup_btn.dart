import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSignUpBtn extends StatelessWidget {
  final String text;
  final Color primaryColor, onPrimaryColor;
  final Widget routeWidget;
  const LoginSignUpBtn({
    Key? key,
    this.primaryColor = cPrimaryColor,
    this.onPrimaryColor = Colors.white,
    required this.text,
    required this.routeWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final elevatedBtnStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      shadowColor: Colors.transparent,
      primary: primaryColor,
      onPrimary: onPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      textStyle: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );

    return Container(
      width: size.width * 0.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          (context),
          MaterialPageRoute(
            builder: (context) => routeWidget,
          ),
        ),
        style: elevatedBtnStyle,
        child: Text(text.toUpperCase()),
      ),
    );
  }
}
