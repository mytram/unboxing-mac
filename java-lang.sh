#~/bin/sh

curl -s "https://get.sdkman.io" | bash

echo '. "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.bashrc_brew

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java  11.0.1.j9-adpt
sdk install kotlin
sdk install gradle
