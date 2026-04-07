#!/usr/bin/env bash
set -e

# Install Flutter (stable) with shallow clone for speed
# Check for flutter binary specifically, not just the folder
if [ ! -f "flutter/bin/flutter" ]; then
  echo "Cloning Flutter..."
  rm -rf flutter
  git clone https://github.com/flutter/flutter.git -b stable --depth 1
fi
export PATH="$PWD/flutter/bin:$PATH"

flutter config --enable-web
flutter --version

flutter pub get
flutter build web --release

# Vercel will serve from build/web