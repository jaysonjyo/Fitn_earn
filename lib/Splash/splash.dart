import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _controller; // For container animation
  late AnimationController _imageController; // For image animation

  late Animation<double> _positionAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _borderRadiusAnimation;
  late Animation<double> _parentBorderWidthAnimation;
  late Animation<double> _childBorderWidthAnimation;

  // Image animation
  late Animation<double> _imagePositionAnimation;
  late Animation<double> _imageHorizontalPositionAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController for the container
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // Duration for smoother transitions
    );

    // Initialize the AnimationController for the image
    _imageController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    // Adjust the Position Animation
    _positionAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.8, end: 0.2).chain(CurveTween(curve: Curves.easeInOut)), // Move to center
        weight: 100, // Allocate more time to reach the center
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.2, end: 0.39).chain(CurveTween(curve: Curves.easeInOut)), // Top to middle
        weight: 100,
      ),

    ]).animate(_controller);

    // Adjust the Size Animation
    _sizeAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 48.w, end: 48.w).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 70, // Maintain size while moving to the center
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 48.w, end: 150.w).chain(CurveTween(curve: Curves.fastOutSlowIn)), // Grow quickly
        weight: 30, // Rapid size increase after stopping
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

    // Image Animations
    _imagePositionAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.8, end: 0.44).chain(CurveTween(curve: Curves.easeInOut)),
        weight: 50,
      ),
    ]).animate(_imageController);

    _imageHorizontalPositionAnimation = Tween<double>(begin: 2.9, end: 0.49).animate(
      CurvedAnimation(
        parent: _imageController,
        curve: Curves.easeInOut,
      ),
    );

    // Start the container animation
    _controller.forward();

    // Delay the image animation
    Future.delayed(const Duration(seconds: 2), () {
      _imageController.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _imageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: AnimatedBuilder(
            animation: Listenable.merge([_controller, _imageController]),
            builder: (context, child) {
              final containerSize = _sizeAnimation.value; // Current container size
              final showImageThreshold = 120.w; // Define the size threshold

              return Stack(
                children: [
                  // Container animation
                  Positioned(
                    top: MediaQuery.of(context).size.height * _positionAnimation.value,
                    left: MediaQuery.of(context).size.width / 2 - (containerSize / 2), // Center horizontally
                    child: Container(
                      width: containerSize, // Dynamic width
                      height: containerSize, // Dynamic height
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_borderRadiusAnimation.value),
                        border: Border.all(
                          color: const Color(0xFFF97316), // Parent border color
                          width: _parentBorderWidthAnimation.value, // Dynamic parent border width
                        ),
                      ),
                      child: Container(
                        width: containerSize * 0.9, // Slightly smaller than the parent
                        height: containerSize * 0.9, // Slightly smaller than the parent
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
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

                  // Image animation (appears only after the container reaches the threshold size)
                  if (containerSize >= showImageThreshold)
                    Positioned(
                      top: MediaQuery.of(context).size.height * _imagePositionAnimation.value,
                      left: MediaQuery.of(context).size.width * _imageHorizontalPositionAnimation.value - (containerSize * 0.8 / 2),
                      child: Image.asset(
                        'assets/Group 2.png', // Path to your image
                        width: containerSize * 0.6, // Adjust image size relative to the container
                        height: containerSize * 0.6, // Adjust image size relative to the container
                        fit: BoxFit.contain,
                      ),
                    ),
                ],
              );
            },
    ));
  }
}
