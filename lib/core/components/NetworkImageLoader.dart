import 'package:flutter/material.dart';

class NetworkImageLoader extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;

  const NetworkImageLoader({
    required this.imageUrl,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      width: width,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, progress) {
        return progress == null
            ? child
            : Center(child: CircularProgressIndicator());
      },
      errorBuilder: (context, error, stackTrace) {
        return Icon(Icons.error, size: height);
      },
    );
  }
}
