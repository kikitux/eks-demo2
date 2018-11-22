#!/usr/bin/env bash

pushd /usr/local/bin

#which kubectl || {
#  # from https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html#install-kubectl-linux
#  sudo curl -o kubectl.zip -L https://www.dropbox.com/s/0rdkc2wmkhwt25k/kubectl.zip?dl=0
#  sudo unzip kubectl.zip
#  sudo rm kubectl.zip
#  sudo chmod +x kubectl
#}

which aws-iam-authenticator || {
  # from https://docs.aws.amazon.com/eks/latest/userguide/configure-kubectl.html
  sudo curl -o aws-iam-authenticator.zip -L https://www.dropbox.com/s/ecgmzuc5lpeikl8/aws-iam-authenticator.zip?dl=0
  sudo unzip aws-iam-authenticator.zip
  sudo rm aws-iam-authenticator.zip
  sudo chmod +x aws-iam-authenticator
}

hash -r
popd
