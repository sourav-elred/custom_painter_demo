import 'package:custom_painter_demo/custom_painter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Custom Painter Demo',
      home: InteractivePainterDemo(),
    );
  }
}

class InteractivePainterDemo extends StatefulWidget {
  const InteractivePainterDemo({super.key});

  @override
  InteractivePainterDemoState createState() => InteractivePainterDemoState();
}

class InteractivePainterDemoState extends State<InteractivePainterDemo> {
  Color _circleColor = Colors.blue;
  Color _lineColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Painter Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _circleColor =
                  _circleColor == Colors.blue ? Colors.green : Colors.blue;
              _lineColor =
                  _lineColor == Colors.red ? Colors.orange : Colors.red;
            });
          },
          child: CustomPaint(
            size: const Size(300, 300),
            painter: MyInteractiveCustomPainter(
              circleColor: _circleColor,
              lineColor: _lineColor,
            ),
          ),
        ),
      ),
    );
  }
}
