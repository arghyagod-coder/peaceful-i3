#/bin/bash

echo "Cloning Wallpapers"
git clone https://gitlab.com/dwt1/wallpapers
cp -r wallpapers ~/.wallpapers

echo "Cloned Wallpapers"
echo "Completed"

[ -d ~/.config ] && mkdir ~/.config/i3-backup-$(date +%Y.%m.%d-%H%M) && mv -Rf ~/.config/i3/* ~/.config/i3-backup-$(date +%Y.%m.%d-%H%M)
cp -r i3/* ~/.config/i3/
echo "Copying Complete"

echo "Installing  dmenu-distrotube"

git clone https://gitlab.com/dwt1/dmenu-distrotube.git
cd dmenu-distrotube
sudo make clean install && rm config.h
cd ..

echo "Finished installing dmenu distrotube"

echo "Installing  bumblebee-status"

pip install --user bumblebee-status

echo "Finished installing bumblebee status"
