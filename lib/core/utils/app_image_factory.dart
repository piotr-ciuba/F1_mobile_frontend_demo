// import 'package:f1_mobile_frontend_demo/common/asset_paths.dart';

import 'package:f1_mobile_frontend_demo/common/asset_paths.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

mixin AppImageFactory {
  static Future<void> loadAllImages(BuildContext context) async {
    List<String> imagePaths = AssetPaths.jpgImages;
    List<String> svgPaths = AssetPaths.svgImages;

    for (final String path in svgPaths) {
      if (context.mounted) {
        await precachePicture(
          ExactAssetPicture(
              SvgPicture.svgStringDecoderOutsideViewBoxBuilder, path),
          null,
        );
      }
    }

    for (final String path in imagePaths) {
      if (context.mounted) {
        await precacheImage(Image.asset(path).image, context);
      }
    }
  }

  static Widget get imageAlonso => Image.asset(AssetPaths.alonso);
  static Widget get imageHamilton => Image.asset(AssetPaths.hamilton);
  static Widget get imageKubica => Image.asset(AssetPaths.kubica);
  static Widget get imageVerstappen => Image.asset(AssetPaths.verstappen);
  static Widget get imageLeclerc => Image.asset(AssetPaths.leclerc);
  static Widget get imagePerez => Image.asset(AssetPaths.perez);
  static Widget get imageRussell => Image.asset(AssetPaths.russell);
  static Widget get imageWikipediaLogo => Image.asset(AssetPaths.wikipediaLogo);
  static Widget svgF1Logo([Color? color]) => SvgPicture.asset(
        AssetPaths.f1Logo,
        color: color,
      );
}
