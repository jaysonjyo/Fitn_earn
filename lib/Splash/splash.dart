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
  late Animation<double> _parentBorderWidthAnimation;
  late Animation<double> _childBorderWidthAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Total animation duration
    );

    // Define the Position Animation: Moves from bottom to top and back to center
    _positionAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.8, end: 0.2).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 50, // First half: Bottom to Top
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.2, end: 0.39).chain(CurveTween(curve: Curves.easeInOut)), // Top to middle
        weight: 50,
      ),
    ]).animate(_controller);

    // Define the Size Animation: Container grows as it moves down
    _sizeAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 48.w, end: 48.w).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 50, // Maintain size while moving up
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 48.w, end: 150.w).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 50, // Grow as it moves downward
      ),
    ]).animate(_controller);

    // Define the Border Radius Animation
    _borderRadiusAnimation = Tween<double>(begin: 30.r, end: 110.r).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Border Width Animations
    _parentBorderWidthAnimation = Tween<double>(begin: 1.w, end: 3.w).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _childBorderWidthAnimation = Tween<double>(begin: 1.w, end: 2.w).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
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
                  width: _sizeAnimation.value, // Dynamic width
                  height: _sizeAnimation.value, // Dynamic height
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_borderRadiusAnimation.value),
                    border: Border.all(
                      color: Color(0xFFF97316), // Parent border color
                      width: _parentBorderWidthAnimation.value, // Dynamic parent border width
                    ),
                  ),
                  child: Container(
                    width: _sizeAnimation.value * 0.9, // Slightly smaller than the parent
                    height: _sizeAnimation.value * 0.9, // Slightly smaller than the parent
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.80, -0.60),
                        end: Alignment(-0.8, 0.6),
                        colors: [Color(0xFFDB2777), Color(0xFFF97316)],
                      ),
                      borderRadius: BorderRadius.circular(_borderRadiusAnimation.value - 10.r), // Slightly smaller radius
                      border: Border.all(
                        color: Colors.white, // Child border color
                        width: _childBorderWidthAnimation.value, // Dynamic child border width
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
