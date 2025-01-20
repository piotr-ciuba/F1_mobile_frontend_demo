import 'package:url_launcher/url_launcher.dart';

void openInAppWebPage(String path) async {
  final Uri url = Uri.parse(path);

  if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
    throw Exception('Could not launch $url');
  }
}
