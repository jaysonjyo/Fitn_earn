
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _positionAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _borderRadiusAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // Total animation duration
    );

    // Define the Position Animation: Moves from bottom to top and back to center
    _positionAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 0.0).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 50, // First half: Bottom to Top
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.0, end: 0.5).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 50, // Second half: Top to Middle
      ),
    ]).animate(_controller);

    // Define the Size Animation: Container grows as it moves down
    _sizeAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 48.w, end: 48.w).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 50, // Maintain size while moving up
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 48.w, end: 140.w).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 50, // Grow as it moves downward
      ),
    ]).animate(_controller);

    // Define the Border Radius Animation
    _borderRadiusAnimation = Tween<double>(begin: 30.r, end: 70.r).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height * _positionAnimation.value,
                    left: MediaQuery.of(context).size.width / 2 - (_sizeAnimation.value / 2), // Center horizontally
                    child: Container(
                      width: _sizeAnimation.value,
                      height: _sizeAnimation.value,
                      decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.80, -0.60),
                          end: Alignment(-0.8, 0.6),
                          colors: [Color(0xFFDB2777), Color(0xFFF97316)],
                        ),
                        shape: OvalBorder(
                          side: BorderSide(width: 2, color: Color(0xFFFFF7ED)),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
    ));}
}