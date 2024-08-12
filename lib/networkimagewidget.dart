import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final double width, height, borderRadius, iconSize;

  const NetworkImageWidget({
    Key? key,
    required this.imageUrl,
    this.width = 40,
    this.height = 40,
    this.borderRadius = 18,
    this.iconSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: BoxFit.cover, // Ensure the image covers the container
        placeholder: (context, url) => Container(
          width: width,
          height: height,
          color: Colors.grey[300], // Or any placeholder color
          child: Icon(
            Icons.image,
            size: iconSize,
            color: Colors.grey[700],
          ),
        ),
        errorWidget: (context, url, error) => Container(
          width: width,
          height: height,
          color: Colors.grey[300], // Or any error color
          child: Icon(
            Icons.error,
            size: iconSize,
            color: Colors.red,
          ),
        ),
        imageBuilder: (context, imageProvider) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
