import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          placeholder:
              (context, url) => Center(child: CircularProgressIndicator()),
          imageUrl: imageUrl,
          errorWidget: (context, url, error) => Icon(Icons.error, size: 45),
        ),
      ),
    );
  }
}
