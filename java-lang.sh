#~/bin/sh

curl -s "https://get.sdkman.io" | bash

echo ""                                     >> ~/.bashrc_brew
echo '"sdkman init..."'                     >> ~/.bashrc_brew
echo 'export SDKMAN_DIR="$HOME/.sdkman"'    >> ~/.bashrc_brew
echo '[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"' >> ~/.bashrc_brew

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java  11.0.1.j9-adpt
sdk install kotlin
sdk install gradle
brew install ktlint
