import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String imageUrl;
  final double size;

  const AvatarComponent({required this.imageUrl, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size / 2,
      backgroundImage: NetworkImage(imageUrl),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
