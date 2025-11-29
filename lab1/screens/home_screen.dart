import 'package:flutter/material.dart';
import '../widgets/plin_title.dart';
import '../widgets/sticker_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(62, 61, 179, 1),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 0.0,
            right: 20.0,
            bottom: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PlinTitle(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(62, 61, 179, 1),
                        border: Border.all(
                          color: const Color.fromRGBO(255, 255, 255, 0.25), 
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 0.25).withOpacity(0.5), 
                            spreadRadius: 0.1,
                            blurRadius: 1.5, 
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: const [
                          StickerSection(
                              title: 'Ball Stickers',
                              imageName: 'assets/images/balls.png',
                              dotsCount: 3),
                          StickerSection(
                            title: 'Balloons Stickers',
                            imageName: 'assets/images/ballons.png',
                            dotsCount: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
