#~/bin/sh

curl -s "https://get.sdkman.io" | bash

echo ""                                     >> ~/.brewrc
echo '"sdkman init..."'                     >> ~/.brewrc
echo 'export SDKMAN_DIR="$HOME/.sdkman"'    >> ~/.brewrc
echo '[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"' >> ~/.brewrc

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java  11.0.1.j9-adpt
sdk install kotlin
sdk install gradle
brew install ktlint
