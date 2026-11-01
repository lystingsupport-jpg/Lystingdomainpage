#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
flutter build web --release --pwa-strategy=none "$@"
# Flutter generates its worker during build; replace it with the one-time
# retirement worker so previously installed releases cannot keep serving old UI.
cp web/retire_flutter_service_worker.js build/web/flutter_service_worker.js
