import 'package:flutter/material.dart';
import 'dart:math' show pi;

class GolGolGumo extends StatefulWidget {
  const GolGolGumo({super.key});

  @override
  State<GolGolGumo> createState() => _GolGolGumoState();
}

class _GolGolGumoState extends State<GolGolGumo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationx;
  late Animation<double> _animationy;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animationy = Tween<double>(begin: pi, end: 2 * pi).animate(_controller);
    _animationx = Tween<double>(begin: 0.0, end: pi).animate(_controller);

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..rotateX(_animationy.value)
              ..rotateY(_animationy.value),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipPath(
                  clipper: const HalfCircle(side: CircleSide.left),
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.black,
                  ),
                ),
                ClipPath(
                  clipper: const HalfCircle(side: CircleSide.right),
                  child: Container(
                    width: 150,
                    height: 150,
                    color: const Color.fromARGB(255, 85, 18, 241),
                  ),
                )
              ],
            ),
          );
        },
      )),
    );
  }
}

enum CircleSide { left, right }

extension ToPath on CircleSide {
  Path topath(Size size) {
    Path path = Path();
    late Offset offset;
    late bool clockwise;
    switch (this) {
      case CircleSide.left:
        path.moveTo(size.width, 0);
        offset = Offset(size.width, size.height);
        clockwise = false;
        break;
      case CircleSide.right:
        offset = Offset(0, size.height);
        clockwise = true;
        break;
    }
    path.arcToPoint(
      offset,
      radius: Radius.elliptical(size.width / 2, size.height / 2),
      clockwise: clockwise,
    );
    path.close();
    return path;
  }
}

class HalfCircle extends CustomClipper<Path> {
  final CircleSide side;
  const HalfCircle({required this.side});
  @override
  Path getClip(Size size) => side.topath(size);

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
