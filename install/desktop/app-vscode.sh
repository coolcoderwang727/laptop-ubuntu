cd /tmp
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null
rm -f packages.microsoft.gpg
cd -

sudo apt update -y
sudo apt install -y code

mkdir -p ~/.config/Code/User
cp ~/.local/share/laptop-ubuntu/configs/vscode.json ~/.config/Code/User/settings.json

# Install extensions
code --install-extension eamodio.gitlens
code --install-extension janisdd.vscode-edit-csv
code --install-extension kaiwood.endwise
code --install-extension ms-vscode.remote-explorer
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension pkief.material-icon-theme
code --install-extension redhat.vscode-yaml
code --install-extension setobiralo.erb-commenter
code --install-extension shopify.polaris-for-vscode
code --install-extension shopify.ruby-lsp
code --install-extension shopify.theme-check-vscode
code --install-extension Shopify.vscode-shopify-dev-assistant	
code --install-extension streetsidesoftware.code-spell-checker
