#!/bin/sh

brew install kubernetes-cli

brew install kubectx

echo 'source <(kubectl completion bash)' >> ~/.brewrc
echo 'alias k=kubectl'                   >> ~/.brewrc
echo 'complete -F __start_kubectl k'     >> ~/.brewrc

brew install helm
