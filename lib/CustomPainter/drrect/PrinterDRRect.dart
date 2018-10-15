import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

/// ------------------------------
/// ┌─┐┬ ┬ ┬┌─┐┬ ┬
/// ├┤ │ └┬┘│ ││ │
/// └  ┴─┘┴ └─┘└─┘
/// Author       : fzl flyou
/// Date         : 2018/10/12 0012
/// ProjectName  : test1
/// Description  :
/// Version      : V1.0
/// ------------------------------

void main() {
  runApp(new MaterialApp(
    home: PrinterOvalDemo(),
  ));
}

class PrinterOvalDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PrinterOvalDemoState();
  }
}

class PrinterOvalDemoState extends State<PrinterOvalDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PrinterOvalDemo"),
      ),
      body: Container(
        child: CustomPaint(
          painter: OvalPainter(new Paint()
            ..color = Colors.lightGreenAccent
            ..strokeCap = StrokeCap.round
            ..isAntiAlias = true
            ..style=PaintingStyle.stroke
            ..strokeWidth = 5.0),
        ),
      ),
    );
  }
}

class OvalPainter extends CustomPainter {
  var _paint;

  OvalPainter(this._paint);

  @override
  void paint(Canvas canvas, Size size) {


//    Rect rect1= Rect.fromPoints(Offset(20.0, 20.0), Offset(100.0, 80.0));
//    canvas.drawOval(rect1, _paint);
//
//    Rect rect2= Rect.fromPoints(Offset(20.0, 120.0), Offset(100.0, 280.0));
//    canvas.drawOval(rect2, _paint);
//
//    Rect rect3= Rect.fromPoints(Offset(20.0, 300.0), Offset(100.0, 380.0));
//    canvas.drawOval(rect3, _paint);

    Rect rect4= Rect.fromCircle(center: Offset(100.0, 100.0),radius:  60.0);
    Rect rect5= Rect.fromCircle(center: Offset(100.0, 100.0),radius:  40.0);

  RRect rRectOut=  RRect.fromRectAndRadius(rect4, Radius.circular(60.0));
  RRect rRectInner=  RRect.fromRectAndRadius(rect5, Radius.circular(40.0));
    canvas.drawDRRect(rRectOut, rRectInner, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
