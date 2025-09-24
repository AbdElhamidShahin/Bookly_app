import 'package:booky_app/core/constants/Strings.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListVeiwItem extends StatelessWidget {
  CustomListVeiwItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,

          errorWidget: (context, url, error) => Icon(Icons.error),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
