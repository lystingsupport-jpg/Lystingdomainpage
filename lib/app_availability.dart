import 'package:flutter/material.dart';
import 'external_launcher.dart';

// Set only after Google has published the public listing, not an opt-in URL.
const googlePlayListing = String.fromEnvironment('LYSTING_GOOGLE_PLAY_URL');

bool isPublicGooglePlayListing(String value) {
  final uri = Uri.tryParse(value);
  return uri != null && uri.scheme == 'https' &&
      uri.host == 'play.google.com' && uri.path == '/store/apps/details' &&
      (uri.queryParameters['id']?.isNotEmpty ?? false);
}

void openLysTingAndroid(BuildContext context) {
  if (isPublicGooglePlayListing(googlePlayListing)) {
    navigateToUrl(googlePlayListing);
    return;
  }
  showDialog<void>(context: context, builder: (context) => AlertDialog(
    title: const Text('LysTing Android — coming soon'),
    content: const Text('Our service app is being prepared for Google Play. The download link will be available here after launch. Product and food features are planned for a later phase.'),
    actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('Close'))],
  ));
}
