#!/bin/bash

# Clone Flutter stable branch
git clone https://github.com/flutter/flutter.git -b stable

# Set path
export PATH="$PATH:`pwd`/flutter/bin"

# Run flutter doctor to ensure environment is set up
flutter doctor

# Build web release
flutter build web --release
