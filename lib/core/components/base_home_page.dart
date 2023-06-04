import 'package:report_excel/core/utils/dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BaseHome extends StatelessWidget {
  BaseHome({
    super.key,
    required this.child,
    this.floatingActionButton,
    this.isBack = true,
    this.titleAppBar,
    this.actions,
  });
  final Widget child;
  final bool isBack;
  Widget? floatingActionButton;
  String? titleAppBar;
  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton:
          floatingActionButton?.animate().fade(duration: 500.ms),
      appBar: AppBar(
        backgroundColor: ColorsManager.main,
        elevation: 0,
        actions: actions,
        leading: isBack
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
              )
            : const SizedBox(),
        title: Text(
          titleAppBar ?? "Your app name",
          style: titleMedium(context).copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              child,
            ],
          ),
          CustomPaint(
            painter: MyPainter(),
            child: Container(height: 0),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_1 = Paint()
      ..color = ColorsManager.main
      ..style = PaintingStyle.fill;

    Path path_1 = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * .1, 0)
      ..cubicTo(size.width * .05, 0, 0, 20, 0, size.width * .08);

    Path path_2 = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width * .9, 0)
      ..cubicTo(
          size.width * .95, 0, size.width, 20, size.width, size.width * .08);

    Paint paint_2 = Paint()
      ..color = ColorsManager.main
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    Path path_3 = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0);

    canvas.drawPath(path_1, paint_1);
    canvas.drawPath(path_2, paint_1);
    canvas.drawPath(path_3, paint_2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
