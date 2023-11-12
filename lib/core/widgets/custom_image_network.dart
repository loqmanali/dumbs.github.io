import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImageNetwork extends StatelessWidget {
  const CustomImageNetwork({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
  });

  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      height: height,
      width: width,
      fit: fit,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: fit,
          ),
        ),
      ),
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator.adaptive(
          backgroundColor: Colors.red,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
      ),
      errorWidget: (context, url, error) => Image.network(
        url,
        fit: fit,
        height: height,
        width: width,
      )
    );
  }
}

Widget Function(BuildContext, Widget, int?, bool) frameBuilder = (context, child, frame, wasSynchronouslyLoaded) {
  if (wasSynchronouslyLoaded) return child;
  return AnimatedOpacity(
    opacity: frame == null ? 0 : 1,
    duration: const Duration(seconds: 1),
    curve: Curves.easeOut,
    child: child,
  );
};

Widget Function(BuildContext, Widget, ImageChunkEvent?) loadingBuilder = (context, child, loadingProgress) {
  if (loadingProgress == null) return child;
  return const Center(
    child: CircularProgressIndicator(
      color: Colors.red,
    ),
  );
};
