#/bin/bash

echo "Cloning Wallpapers"
git clone https://gitlab.com/dwt1/wallpapers
cp -r wallpapers ~/.wallpapers

echo "Cloned Wallpapers"
echo "Completed"

echo "Copying Complete"
[ -d ~/.config ] && mkdir ~/.config/i3-backup-$(date +%Y.%m.%d-%H%M) && mv -Rf ~/.config/i3/* ~/.config/i3-backup-$(date +%Y.%m.%d-%H%M)
cp -r i3/* ~/.config/i3/
