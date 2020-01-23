import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: SafeArea(
            child: CustomPaint(
              size: Size(double.infinity, double.infinity),
              painter: Line(),
//              BobRoss(),
//                  Sky(),
              child: Center(
                child: Text('hello'),
              ),
            ),
          ),
        ),
      ),

//      MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//rectangle
//class BobRoss extends CustomPainter {
//  @override
//  void paint(Canvas canvas, Size size) {
//    Paint paint = Paint();
//    paint.style = PaintingStyle.fill;
//    paint.color = Colors.greenAccent;
////    canvas.drawPath(, paint);
//    canvas.drawRect(Rect.fromLTWH(0.0, 0.0, size.width, 50), paint);
//  }
//
//  @override
//  bool shouldRepaint(BobRoss oldDelegate) {
//    return false;
//  }
//}
class Line extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = Colors.greenAccent;
//    canvas.drawPath(, paint);
    canvas.drawLine(Offset(100, 90), Offset(0, 0), paint);
  }

  @override
  bool shouldRepaint(Line oldDelegate) {
    return false;
  }
}

//circle
//class Sky extends CustomPainter {
//  @override
//  void paint(Canvas canvas, Size size) {
//    //Returns a one in each bit position for
//    // which the corresponding bits of both operands are ones.
//    var rect = Offset.zero & size;
//    var gradient = RadialGradient(
//      center: const Alignment(0.7, -0.6),
//      radius: 0.2,
//      colors: [const Color(0xFFFFFF00), const Color(0xFF0099FF)],
//      stops: [0.4, 1.0],
//    );
//    canvas.drawCircle(Offset(100, 200), 50, Paint());
////    canvas.drawRect(
////      rect,
////      Paint()..shader = gradient.createShader(rect),
////    );
//  }
//
////  @override
////  SemanticsBuilderCallback get semanticsBuilder {
////    return (Size size) {
////      var rect = Offset.zero & size;
////      var width = size.shortestSide * 0.4;
////      rect = const Alignment(0.8, -0.9).inscribe(Size(width, width), rect);
////      return [
////        CustomPainterSemantics(
////          rect: rect,
////          properties: SemanticsProperties(
////            label: 'Sun',
////            textDirection: TextDirection.ltr,
////          ),
////        ),
////      ];
////    };
////  }
//
//  // Since this Sky painter has no fields, it always paints
//  // the same thing and semantics information is the same.
//  // Therefore we return false here. If we had fields (set
//  // from the constructor) then we would return true if any
//  // of them differed from the same fields on the oldDelegate.
//  @override
//  bool shouldRepaint(Sky oldDelegate) => false;
//
//  @override
//  bool shouldRebuildSemantics(Sky oldDelegate) => false;
//}
