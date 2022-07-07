import 'package:flutter/material.dart';

class Backgound extends StatelessWidget {
  const Backgound({
    Key? key,
    required this.child,
    required this.topImage,
    required this.bottomImage,
    this.topImageTopValue,
    this.topImageRightValue,
    this.topImageLeftValue,
    this.bottomImageBottomValue,
    this.bottomImageRightValue,
    this.bottomImageLeftValue,
  }) : super(key: key);

  final double? topImageTopValue, topImageRightValue, topImageLeftValue;
  final double? bottomImageBottomValue,
      bottomImageRightValue,
      bottomImageLeftValue;

  final String topImage, bottomImage;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            //top image
            Positioned(
              top: topImageTopValue,
              left: topImageLeftValue,
              right: topImageRightValue,
              child: Image.asset(
                topImage,
                width: 120,
              ),
            ),
            //buttom image
            Positioned(
              bottom: bottomImageBottomValue,
              right: bottomImageRightValue,
              left: bottomImageLeftValue,
              child: Image.asset(
                bottomImage,
                width: 120,
              ),
            ),
            SafeArea(child: child)
          ],
        ),
      ),
    );
  }
}
