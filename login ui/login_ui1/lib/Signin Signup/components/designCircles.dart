import 'package:flutter/material.dart';

class BlueCircle extends StatelessWidget {
  const BlueCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Positioned(
      left: -_width * 0.28,
      top: -_width * 0.4,
      child: Container(
        width: _width,
        height: _width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_width*0.5),
          color: const Color(0xff0D97C2),
        ),
      ),
    );
  }
}

class GreenCircle extends StatelessWidget {
  const GreenCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Positioned(
      right: -_width * 0.2,
      top: -_width * 0.28,
      child: Container(
        width: _width * 0.7,
        height: _width * 0.7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_width * 0.35),
          color: const Color(0xff06D3A2),
        ),
      ),
    );
  }
}
