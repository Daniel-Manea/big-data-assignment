#!/bin/bash

# Specify the path to your extensions.txt file
EXTENSIONS_FILE="extensions.txt"

# Loop through each line in the extensions.txt file and install the extensions
while IFS= read -r extension; do
    code --install-extension "$extension"
done < "$EXTENSIONS_FILE"

echo "Extensions installed from $EXTENSIONS_FILE"