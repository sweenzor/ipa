#!/usr/bin/env bash
#
#    Install IPA by running this command:
#    curl https://raw.github.com/mattswe/ipa/master/install.sh | sh
#

# Set up the environment. Respect $VERSION if it's set.
  set -e
  IPA_ROOT="/usr/local/bin/ipa"
  IPA_BIN="$IPA_ROOT/ipa"
  [[ -z "$VERSION" ]] && VERSION=0.0.1

  echo "*** Installing IPA $VERSION..."

# Remove old versions and create new directories
  rm -fr "$IPA_BIN"
  mkdir -p "$IPA_ROOT"
  cd "$IPA_ROOT"

# Download latest script
  curl -s https://raw.github.com/mattswe/ipa/master/ipa > ipa
  chmod a+x ipa

# Link to location in users PATH
  echo "*** Linking..."
  ln -sfn "$IPA_BIN" /usr/local/bin

# All done!
  echo "*** Installed"
