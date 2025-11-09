#!/bin/bash
# difftool-wrapper.sh: Wrapper for git difftool that prints temp directories
# and keeps process alive for hot reload functionality

set -euo pipefail

# Print the two temp directory paths to stdout (one per line)
# These will be read by the Python server
echo "$1"  # Left directory
echo "$2"  # Right directory

# Flush output to ensure Python reads it immediately
sync

# Keep this process alive indefinitely
# The Python server will kill this process when it needs to refresh
sleep infinity
