#!/usr/bin/env bash
set -e

# Install Flutter (stable)
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PWD/flutter/bin:$PATH"

flutter config --enable-web
flutter --version

flutter pub get
flutter build web --release

# Vercel will serve from build/web