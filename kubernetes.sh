#!/bin/sh

brew install kubernetes-cli

brew install kubectx

echo 'source <(kubectl completion bash)' >> ~/.bashrc_brew
echo 'alias k=kubectl'                   >> ~/.bashrc_brew
echo 'complete -F __start_kubectl k'     >> ~/.bashrc_brew
