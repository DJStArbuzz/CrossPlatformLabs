import 'package:flutter/material.dart';

class PlinTitle extends StatelessWidget {
  const PlinTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Stack(
              children: [
                // Drop Shadow
                Text(
                  'Plin',
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 51,
                    letterSpacing: -8.0, // Межбуквенное расстояние
                    fontWeight: FontWeight.w900,
                    color: Colors.transparent,
                    shadows: [
                      Shadow(
                        color: const Color.fromRGBO(55, 54, 175, 1.0),
                        blurRadius: 20,
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                ),
                // Main Gradient Text
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [
                      Color.fromRGBO(236, 246, 252, 1),
                      Color.fromRGBO(246, 251, 254, 1),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds),
                  child: const Text(
                    'Plin',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 80,
                    letterSpacing: -8.0, // Межбуквенное расстояние
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Outer Stroke
                Text(
                  'Plin',
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 80,
                    letterSpacing: -8.0, // Межбуквенное расстояние
                    fontWeight: FontWeight.w900,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3.23
                      ..color = const Color.fromRGBO(152, 126, 250, 1),
                  ),
                ),
              ],
            ),
            // Subtitle
        
        
            Transform.translate(
              offset: const Offset(0, -20), // Поднимаем подзаголовок выше
              child: ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [
                    Color.fromRGBO(236, 246, 252, 1),
                    Color.fromRGBO(246, 251, 254, 1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds),
                child: const Text(
                  "ball stickers",
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(right: 2),
          child: Image.asset(
            'assets/images/vector.png',
            width: 36,
            height: 36,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
