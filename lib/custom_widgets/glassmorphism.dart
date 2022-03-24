import 'dart:ui';
import 'package:flutter/material.dart';

class Glassmorphism extends StatefulWidget {
  final double blur;
  final double opacity;
  final Widget child;
  final double? width;
  final double? height;
  final double radius;
  final Color color;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final LinearGradient? gradient;
  const Glassmorphism({
    Key? key,
    required this.blur,
    required this.opacity,
    required this.child,
    this.width,
    this.height,
    this.color = Colors.white,
    this.radius = 20,
    this.margin,
    this.padding,
    this.gradient,
  }) : super(key: key);

  @override
  State<Glassmorphism> createState() => _GlassmorphismState();
}

class _GlassmorphismState extends State<Glassmorphism> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(0, 255, 255, 255),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.radius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: widget.blur, sigmaY: widget.blur),
          child: Container(
            width: widget.width,
            height: widget.height,
            margin: widget.margin,
            padding: widget.padding,
            decoration: BoxDecoration(
              color: widget.color.withOpacity(widget.opacity),
              borderRadius: BorderRadius.circular(widget.radius),
              border: Border.all(
                width: 1.5,
                color: Colors.white.withOpacity(.2),
              ),
              gradient: widget.gradient,
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
