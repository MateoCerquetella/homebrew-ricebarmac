#!/bin/bash

# Script to update the RiceBarMac Homebrew formula
# Usage: ./update_formula.sh <version> <zip_url>

set -e

if [ $# -ne 2 ]; then
    echo "Usage: $0 <version> <zip_url>"
    echo "Example: $0 v0.1.0 https://github.com/mateocerquetella/RiceBarMac/releases/download/v0.1.0/RiceBarMac.zip"
    exit 1
fi

VERSION=$1
ZIP_URL=$2
FORMULA_FILE="Formula/ricebarmac.rb"

echo "Downloading release to calculate checksum..."
curl -L -o "temp_ricebarmac.zip" "$ZIP_URL"

echo "Calculating SHA256 checksum..."
CHECKSUM=$(shasum -a 256 "temp_ricebarmac.zip" | cut -d' ' -f1)

echo "Cleaning up temporary file..."
rm "temp_ricebarmac.zip"

echo "Updating formula..."
sed -i.bak "s|url \".*\"|url \"$ZIP_URL\"|g" "$FORMULA_FILE"
sed -i.bak "s|sha256 \".*\"|sha256 \"$CHECKSUM\"|g" "$FORMULA_FILE"
sed -i.bak "s|version \".*\"|version \"$VERSION\"|g" "$FORMULA_FILE"

# Remove backup file
rm "${FORMULA_FILE}.bak"

echo "Formula updated successfully!"
echo "Version: $VERSION"
echo "URL: $ZIP_URL"
echo "SHA256: $CHECKSUM"
echo ""
echo "Don't forget to commit and push your changes:"
echo "git add $FORMULA_FILE"
echo "git commit -m \"Update RiceBarMac to $VERSION\""
echo "git push origin main"
