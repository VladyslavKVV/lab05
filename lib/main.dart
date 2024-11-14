import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const _size = 50.0;
const _bgColor = Colors.yellow;
const _borderColor = Colors.grey;
const _borderWidth = 1.0;
const _borderRadius = 10.0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: _buildSix(),
      ),
    );
  }

  List<Widget> _buildSix() {
    return [
      _buildLineTopTopsBottom(), // Верхня горизонтальна лінія
      _buildLineSideLeft(),   // Ліва вертикальна лінія
      _buildLineTopTopBottom(),  // Середня горизонтальна лінія
      _buildLineSide(),       // Середня лінія з краями
      _buildLineSide(),       // Нижня вертикальна лінія зліва і справа
      _buildLineTopBottom(),  // Нижня горизонтальна лінія
    ];
  }

  Widget _buildLineTopBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(_bgColor),
        _buildDot(_bgColor),
      ],
    );
  }

  Widget _buildLineTopTopBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(_bgColor),
        _buildDot(_bgColor),
        _buildDot(_bgColor),
        _buildEmpty()

      ],
    );
  }

  Widget _buildLineTopTopsBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildEmpty(),
        _buildDot(_bgColor),
        _buildDot(_bgColor),
        _buildDot(_bgColor),
      ],
    );
  }

  Widget _buildLineSideLeft() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(_bgColor),
        _buildEmpty(),
        _buildEmpty(),
        _buildEmpty(),
      ],
    );
  }

  Widget _buildLineSide() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(_bgColor),
        _buildEmpty(),
        _buildEmpty(),
        _buildDot(_bgColor),
      ],
    );
  }

  Widget _buildDot(Color color) {
    return Container(
      width: _size,
      height: _size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(_borderRadius),
        ),
        border: Border.all(
          color: _borderColor,
          width: _borderWidth,
        ),
      ),
    );
  }

  Widget _buildEmpty() {
    return SizedBox(
      width: _size,
      height: _size,
    );
  }
}
