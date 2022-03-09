import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'circularprogress_indicator.dart';

// @desc Network Image with error Control
// @widget Image.network()
// @package flutter default
class DisplayNetworkImage extends StatelessWidget {
  final String imageUrl;
  final Widget customErrorWidget;
  const DisplayNetworkImage({
    required this.imageUrl,
    this.customErrorWidget = const DisplayCirculatProgressIndicator(),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl != 'null') {
      return Image.network(
        imageUrl,
        errorBuilder: (context, error, stackTrace) {
          return customErrorWidget;
        },
      );
    } else {
      return const DisplayCirculatProgressIndicator();
    }
  }
}

// @desc Cache Network Image for offline/Easy Load
// @widget CacheNetworkImage()
// @package cached_network_image
class DisplayCacheNetworkImage extends StatelessWidget {
  final String imageUrl;
  final bool downloadProgress = false;
  final Widget customErrorWidget = const DisplayCirculatProgressIndicator();
  final Widget placeholder = const DisplayCirculatProgressIndicator();

  const DisplayCacheNetworkImage({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (downloadProgress) {
      return imageUrl != 'null'
          ? CachedNetworkImage(
              imageUrl: imageUrl,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  placeholder,
              errorWidget: (context, url, error) => customErrorWidget,
            )
          : customErrorWidget;
    } else {
      return imageUrl != 'null'
          ? CachedNetworkImage(
              imageUrl: imageUrl,
              placeholder: (context, url) => placeholder,
              errorWidget: (context, url, error) => customErrorWidget,
            )
          : customErrorWidget;
    }
  }
}
