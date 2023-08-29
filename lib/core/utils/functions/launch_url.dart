
import 'package:url_launcher/url_launcher.dart';
import 'coustom_snal_bar.dart';
Future<void> launchCustomUr(context, String? url) async {
  if (url != null) {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnackBar(context, "cannot launch $uri");
    }
  }
}
