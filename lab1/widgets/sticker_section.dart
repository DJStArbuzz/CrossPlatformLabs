import 'package:flutter/material.dart';

class StickerSection extends StatelessWidget {
  final String title;
  final String imageName;
  final int dotsCount;

  const StickerSection({
    super.key,
    required this.title,
    required this.imageName,
    required this.dotsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 61, 179, 1), // Общий фон
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Блок 1: Заголовок и "View all" - 311x36
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: _buildHeaderSection(title),
          ),
          const SizedBox(height: 4),
          
          // Блок 2: Основной контент с картинками - 311x216
          Container(
            padding: const EdgeInsets.only(
              top: 20,
              left: 7,
              right: 6,
              bottom: 12,
            ),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(63, 62, 199, 1), // Цвет второго блока
              borderRadius: BorderRadius.circular(13.0),
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Блок 2.1: Количество и FREE
                _buildCountAndFreeSection(),
                
                // Блок 2.2: 3 картинки стикеров
                _buildThreeStickersRow(),
                
                // Блок 2.3: Кнопка "Watch all" 279x40
                _buildWatchAllButton(),
              ],
            ),
          ),
          
          // Блок 3: Точки-индикаторы
          const SizedBox(height: 10),
          _buildDotsIndicator(dotsCount),
        ],
      ),
    );
  }

  // Градиентный текст
  Widget _buildGradientText(String text, TextStyle style) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Color.fromRGBO(236, 246, 252, 1),
          Color.fromRGBO(246, 251, 254, 1),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(bounds),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }

  // Блок 1: Заголовок и "View all"
  Widget _buildHeaderSection(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildGradientText(
          title,
          const TextStyle(
            fontFamily: 'Lexend',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            // Подчеркнутый текст "View all"
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [
                  Color.fromRGBO(236, 246, 252, 1),
                  Color.fromRGBO(246, 251, 254, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds),
              child: Text(
                'view all',
                style: const TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromRGBO(157, 137, 249, 1),
                  color: Color.fromRGBO(157, 137, 249, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(width: 4),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [
                  Color.fromRGBO(236, 246, 252, 1),
                  Color.fromRGBO(246, 251, 254, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds),
            
            ),
          ],
        ),
      ],
    );
  }

  // Блок 2.1: Количество и FREE
  Widget _buildCountAndFreeSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Количество стикеров с иконкой коробки
        Row(
          children: [
            // Картинка коробки
            const SizedBox(width: 4),
            // Число стикеров
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              margin: EdgeInsets.only(left: 6),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(225, 40, 203, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      child: _buildGradientText(
                        'x9',
                        const TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      child: Image.asset(
                        'assets/images/box.png',
                        width: 16,
                        height: 16,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]
                ),
            ),
          ],
        ),
        // Блок FREE
        Container(
          margin: EdgeInsets.only(right: 8),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(225, 40, 203, 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: _buildGradientText(
            'FREE',
            const TextStyle(
              fontFamily: 'Lexend',
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  // Блок 2.2: 3 картинки стикеров
  Widget _buildThreeStickersRow() {
    return Container(
      padding: EdgeInsets.only(top: 12, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildStickerItem(0,0),
          _buildStickerItem(-97.5,0),
          _buildStickerItem(-97.5*2,0),
        ],
      ),
    );
  }

  // Блок 2.3: Кнопка "Watch all" 279x40
  Widget _buildWatchAllButton() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(left: 9, right: 10, bottom: 8),
        padding: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(225, 40, 203, 1), // Цвет кнопки
          borderRadius: BorderRadius.circular(16),
        ),
        child: _buildGradientText(
          'Watch all',
          const TextStyle(
            fontFamily: 'Lexend',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  // Блок 3: Точки-индикаторы
  Widget _buildDotsIndicator(int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return Container(
          width: 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == 0 
                ? const Color.fromRGBO(255, 255, 255, 1)
                : const Color.fromRGBO(63, 62, 199, 1),
          ),
        );
      }),
    );
  }

  // Отдельный стикер
  Widget _buildStickerItem(double x, double y) {
  return Container(
    width: 84,
    height: 84,
    margin: EdgeInsets.only(left: 6, right: 6),
    child: ClipRect(
      child: Transform.translate(
        offset: Offset(97 + x, 91 + y), 
        child: Transform.scale(
          scale: 3.4,
          child: Image.asset(
            imageName,
            width: 400,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  );
}
}