#!/bin/bash
cd /home/marcus/Documents/dotfiles
rm -rf packages.txt
rm -rf flatpak.txt
pacman -Qs >> packages.txt
flatpak list >> flatpak.txt
cp -R /home/marcus/Documents/colors /home/marcus/Documents/dotfiles/home/marcus/Documents
cp -R /home/marcus/.config/hypr/ /home/marcus/Documents/dotfiles/home/marcus/config/
cp -R /home/marcus/.config/waybar/ /home/marcus/Documents/dotfiles/home/marcus/config/
cp -R /home/marcus/.config/kitty/ /home/marcus/Documents/dotfiles/home/marcus/config/
cp -R /home/marcus/.config/kitty/kitty-themes/ /home/marcus/Documents/dotfiles/home/marcus/config/
cp -R /home/marcus/.config/nwg* /home/marcus/Documents/dotfiles/home/marcus/config/
cp -R /home/marcus/.config/mimeapps.list /home/marcus/Documents/dotfiles/home/marcus/config/
cp -R /home/marcus/.config/gtk* /home/marcus/Documents/dotfiles/home/marcus/config/
cp -R /home/marcus/.config/pulse /home/marcus/Documents/dotfiles/home/marcus/config/
cp -R /home/marcus/.emacs.d /home/marcus/Documents/dotfiles/home/marcus/
cp -R /home/marcus/.doom.d /home/marcus/Documents/dotfiles/home/marcus/
cp -R /etc/systemd/system/backup-git.timer /home/marcus/Documents/dotfiles/etc/systemd/system
cp -R /etc/systemd/system/backup-git.service /home/marcus/Documents/dotfiles/etc/systemd/system
cp -R /home/marcus/Pictures/Wallpapers/* /home/marcus/Documents/dotfiles/home/marcus/Pictures/Wallpapers
cp -R /home/marcus/'.local'/share/fonts/ /home/marcus/Documents/dotfiles/home/marcus/'local'/share/
cp -R /home/marcus/'.local'/share/icons/ /home/marcus/Documents/dotfiles/home/marcus/'local'/share/
cp -R /home/marcus/.icons/ /home/marcus/Documents/dotfiles/home/marcus/

#Add and commit to github
git add .
git commit -m "auto-update"
git push -u https://github.com/MalariaKills/MOS_Dotfiles

#Send notification to notification center

#notify-send "Daily backup complete"
