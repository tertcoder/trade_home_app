import 'package:url_launcher/url_launcher.dart';

Future<bool> openWhatsappChat({
  required String phoneNumber,
  String message = "",
}) async {
  String url = 'whatsapp://send?phone=$phoneNumber';
  if (message.isNotEmpty) {
    url += '&text=${Uri.encodeComponent(message)}';
  }

  final Uri parsedUrl = Uri.parse(url);
  if (!await canLaunchUrl(parsedUrl)) false;

  await launchUrl(parsedUrl);

  return true;
}
