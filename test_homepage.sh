#!/bin/bash

# Check if index.html exists
if [ ! -f "index.html" ]; then
    echo "ERROR: index.html does not exist."
    exit 1
fi

# Check if the title is correct
if ! grep -q "<title>Welcome to Our Cool Project!</title>" "index.html"; then
    echo "ERROR: Homepage title is incorrect."
    exit 1
fi

# Check for the heading
if ! grep -q "<h1>🚀 Welcome Aboard! 🚀</h1>" "index.html"; then
    echo "ERROR: Homepage heading is incorrect."
    exit 1
fi

echo "Homepage test passed!"
exit 0
