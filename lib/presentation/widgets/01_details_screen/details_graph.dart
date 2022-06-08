// ignore_for_file: unused_local_variable, unused_field, avoid_print

import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class DetailsGraph extends StatelessWidget {
  const DetailsGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox(
        width: double.infinity,
        child: GraphArea(),
      ),
    );
  }
}

class GraphArea extends StatefulWidget {
  const GraphArea({Key? key}) : super(key: key);

  @override
  State<GraphArea> createState() => _GraphAreaState();
}

class _GraphAreaState extends State<GraphArea>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  List<DataPoint> data = [
    DataPoint(day: 1, steps: Random().nextInt(100)),
    DataPoint(day: 2, steps: Random().nextInt(100)),
    DataPoint(day: 3, steps: Random().nextInt(100)),
    DataPoint(day: 4, steps: Random().nextInt(100)),
    DataPoint(day: 5, steps: Random().nextInt(100)),
    DataPoint(day: 6, steps: Random().nextInt(100)),
    DataPoint(day: 7, steps: Random().nextInt(100)),
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animationController.isAnimating
            ? _animationController.stop()
            : _animationController.forward(from: 0.0);
      },
      child: CustomPaint(
        painter: GraphPainter(
          _animationController.view,
          data: data,
        ),
        child: Container(),
      ),
    );
  }
}

class DataPoint {
  final int day;
  final int steps;

  DataPoint({
    required this.day,
    required this.steps,
  });
}

class GraphPainter extends CustomPainter {
  final List<DataPoint> data;
  final Animation<double> _animationSize;
  final Animation<double> _animationDotSize;

  GraphPainter(Animation<double> animation, {required this.data})
      : _animationSize = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(0.0, 0.7,
                curve: Curves.easeInOutCubicEmphasized),
          ),
        ),
        _animationDotSize = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: animation,
            curve:
                const Interval(0.5, 1, curve: Curves.easeInOutCubicEmphasized),
          ),
        ),
        super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    var xScale = size.width / (data.length - 1);
    var maxSteps = data
        .fold<DataPoint>(
            data[0],
            (previousValue, element) =>
                element.steps > previousValue.steps ? element : previousValue)
        .steps;
    print(xScale);
    print(maxSteps);

    var yScale = size.height / maxSteps;
    var curveOffset = xScale * 0.5;
    List<Offset> points = [];
    var currentX = 0.0;

    for (int i = 0; i < data.length; i++) {
      var currentY =
          size.height - (data[i].steps * yScale * _animationSize.value);
      points.add(Offset(currentX, currentY));
      currentX += xScale;
    }
    //Graph Line Color
    Paint linePaint = Paint()
      ..color = const Color(0xff30c3f9)
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;
    //Graph shadow color
    Paint shadowPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 3);
    //Graph Dot Center Color
    Paint dotCenterPaint = Paint()
      ..color = const Color(0xff30c3f9)
      ..strokeWidth = 9
      ..style = PaintingStyle.fill;
    //Graph Dot shadow color
    Paint dotShadowPaint = Paint()
      ..color = Colors.white.withAlpha(220)
      ..strokeWidth = 9
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.solid, 3);
    //Graph Fill Color
    Paint fillPaint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(size.width / 2, 0),
        ui.Offset(size.width / 2, size.height),
        [
          const Color(0xff30c3f9),
          Colors.white,
        ],
      )
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    Path linePath = Path();

    Offset currentPoint = points[0];

    linePath.moveTo(currentPoint.dx, currentPoint.dy);

    for (int i = 1; i < points.length; i++) {
      var currentPointDx = points[i].dx;
      var currentPointDy = points[i].dy;
      var controlPoint1x = currentPoint.dx + curveOffset;
      var controlPoint1y = currentPoint.dy;
      var controlPoint2x = currentPointDx - curveOffset;
      var controlPoint2y = currentPointDy;
      linePath.cubicTo(
        controlPoint1x,
        controlPoint1y,
        controlPoint2x,
        controlPoint2y,
        currentPointDx,
        currentPointDy,
      );
      currentPoint = points[i];
    }

    Path fillPath = Path.from(linePath);
    fillPath.lineTo(size.width, size.height);
    fillPath.lineTo(0, size.height);

    canvas.drawPath(fillPath, fillPaint);
    canvas.drawPath(linePath, shadowPaint);
    canvas.drawPath(linePath, linePaint);
    canvas.drawCircle(points[3], 14 * _animationDotSize.value, dotShadowPaint);
    canvas.drawCircle(points[3], 8 * _animationDotSize.value, dotCenterPaint);
  }

  @override
  bool shouldRepaint(covariant GraphPainter oldDelegate) {
    return data != oldDelegate.data;
  }
}
