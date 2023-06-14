#!/usr/bin/env bash
set -e

# Check for required commands
command -v curl >/dev/null 2>&1 || { echo >&2 "This script requires 'curl' but it's not installed. Aborting."; exit 1; }

# Install Homebrew (if not already installed)
if ! [ -x "$(command -v brew)" ]; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zprofile
  eval $(/opt/homebrew/bin/brew shellenv)
else
  echo "Homebrew is already installed"
fi

# Install direnv (if not already installed)
if ! [ -x "$(command -v direnv)" ]; then
  echo "Installing direnv..."
  brew install direnv
  echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc
  source ~/.zshrc
else
  echo "direnv is already installed"
fi

# Create .envrc file with placeholder environment values for your cloud providers and versions
echo "Creating .envrc file with placeholder environment values and versions..."
cat << EOL > .envrc
# AWS
export AWS_ACCESS_KEY_ID=your_aws_access_key
export AWS_SECRET_ACCESS_KEY=your_aws_secret_key
export AWS_CLI_VERSION=<aws_cli_version>

# GCP
export GOOGLE_APPLICATION_CREDENTIALS=your_gcp_credentials.json
export GOOGLE_CLOUD_SDK_VERSION=<google_cloud_sdk_version>

# Kubernetes
export KUBECTL_VERSION=<kubectl_version>

# Kafka
export KAFKA_VERSION=<kafka_version>

# Python
export PYTHON_VERSION=<python_version>

# Terraform
export TERRAFORM_VERSION=<terraform_version>

# other environment-specific variables
EOL

# Allow direnv to load the environment file
direnv allow

echo "Environment setup with direnv complete."

# Install asdf (if not already installed)
if ! [ -x "$(command -v asdf)" ]; then
  echo "Installing asdf..."
  brew install asdf
  echo -e '\n. $(brew --prefix asdf)/asdf.sh' >> ~/.zshrc
  source ~/.zshrc
else
  echo "asdf is already installed"
fi

source .envrc

# Install the necessary asdf plugins
asdf plugin-add awscli
asdf plugin-add gcloud
asdf plugin-add kubectl
asdf plugin-add kafka
asdf plugin-add python
asdf plugin-add terraform

echo "Installing AWS CLI..."
asdf install awscli $AWS_CLI_VERSION
asdf global awscli $AWS_CLI_VERSION

echo "Installing Google Cloud SDK..."
asdf install gcloud $GOOGLE_CLOUD_SDK_VERSION
asdf global gcloud $GOOGLE_CLOUD_SDK_VERSION

echo "Installing Kubernetes CLI (kubectl)..."
asdf install kubectl $KUBECTL_VERSION
asdf global kubectl $KUBECTL_VERSION

echo "Installing Kafka (Confluent Platform CLI)..."
asdf install kafka $KAFKA_VERSION
asdf global kafka $KAFKA_VERSION

echo "Installing Python and Apache Beam..."
asdf install python $PYTHON_VERSION
asdf global python $PYTHON_VERSION
python3 -m pip install apache-beam[gcp]

echo "Installing Terraform..."
asdf install terraform $TERRAFORM_VERSION
asdf global terraform $TERRAFORM_VERSION

echo "Done."
