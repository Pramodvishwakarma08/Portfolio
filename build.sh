#!/usr/bin/env bash 
set -e 
 
# Install Flutter if it doesn't exist
if [ ! -d "flutter" ]; then
  echo "Cloning Flutter..."
  git clone https://github.com/flutter/flutter.git -b stable --depth 1 
fi

export PATH="$PWD/flutter/bin:$PATH" 
 
flutter config --enable-web 
flutter pub get 
flutter build web --release 
