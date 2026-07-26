// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;

void openExternalUrl(String url) {
  html.window.open(url, '_blank');
}

void navigateToUrl(String url) {
  html.window.location.assign(url);
}

bool shouldOpenLysBookApps() {
  return Uri.base.queryParameters['open'] == 'lysbook';
}
