#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
flutter build web --release --pwa-strategy=none "$@"
# Flutter generates its worker during build; replace it with the one-time
# retirement worker so previously installed releases cannot keep serving old UI.
cp web/retire_flutter_service_worker.js build/web/flutter_service_worker.js
# These standalone policy pages are deliberately outside the Flutter router so
# Google Play and users can open them directly without the app shell.
cp web/privacy.html web/delete-account.html web/support.html build/web/

python3 tool/version_web_assets.py
