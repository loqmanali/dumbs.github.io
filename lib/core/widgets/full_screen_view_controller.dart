import 'package:flutter/material.dart';

import '../styles/font_styles.dart';

class FullScreenViewController extends StatelessWidget {
  final List<String> passImageUrl;

  const FullScreenViewController({super.key, required this.passImageUrl});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: passImageUrl.length,
      controller: PageController(
        initialPage: 0,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.network(
              passImageUrl[index],
              fit: BoxFit.scaleDown,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error);
              },
            ),
            const SizedBox(height: 10),
            Text(
              'Image ${index + 1}',
              style: FontStyles.mapSearchBarFontStyle(context),
            ),
          ],
        );
      },
    );
  }
}