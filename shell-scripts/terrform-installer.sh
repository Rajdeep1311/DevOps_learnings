#!/bin/bash

# Check if curl is installed
if ! [ -x "$(command -v curl)" ]; then
  echo "Error: curl is not installed. Please install it first."
  exit 1
fi

# Download the Terraform binary for Linux
TERRAFORM_VERSION="0.15.5"  # Change this to the desired Terraform version
TERRAFORM_DOWNLOAD_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

# Create a temporary directory for Terraform installation
mkdir -p /tmp/terraform-install
cd /tmp/terraform-install

# Download and unzip Terraform
echo "Downloading Terraform..."
curl -LO $TERRAFORM_DOWNLOAD_URL
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Move the Terraform binary to /usr/local/bin (requires sudo)
echo "Installing Terraform..."
sudo mv terraform /usr/local/bin/

# Clean up the temporary directory
echo "Cleaning up..."
cd ~
rm -rf /tmp/terraform-install

# Verify Terraform installation
echo "Terraform installation complete."
terraform --version
