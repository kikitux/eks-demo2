#!/usr/bin/env bash

exec 5>&1 &>/dev/null

#which aws || {
#  # from https://docs.aws.amazon.com/cli/latest/userguide/awscli-install-bundle.html
#  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
#  unzip awscli-bundle.zip
#  rm awscli-bundle.zip
#  sudo /usr/bin/python2 awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
#  rm -fr awscli-bundle
#}

pushd /usr/local/bin

which kubectl || {
  # from https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html#install-kubectl-linux
  sudo curl -o kubectl.zip -L https://www.dropbox.com/s/0rdkc2wmkhwt25k/kubectl.zip?dl=0
  sudo unzip kubectl.zip
  sudo rm kubectl.zip
  sudo chmod +x kubectl
}

which aws-iam-authenticator || {
  # from https://docs.aws.amazon.com/eks/latest/userguide/configure-kubectl.html
  sudo curl -o aws-iam-authenticator.zip -L https://www.dropbox.com/s/ecgmzuc5lpeikl8/aws-iam-authenticator.zip?dl=0
  sudo unzip aws-iam-authenticator.zip
  sudo rm aws-iam-authenticator.zip
  sudo chmod +x aws-iam-authenticator
}

popd

exec 1>&5
