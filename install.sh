#!/bin/bash

echo "Welcome to installing the blue screen of life (yippee)"

# user must script as root
if [[ $(id -u) -ne 0 ]]; then
	echo "Must run script as root (sudo)"
	exit
else
	echo "Script is running with root permissions... continuing"
fi
echo "riyal or fakeh"

# check if the grub folder is called grub/ or grub2/
if [ -d /boot/grub ]; then
    grub_path="/boot/grub"
elif [ -d /boot/grub2 ]; then
    grub_path="/boot/grub2"
else
    echo "Can't find a /boot/grub or /boot/grub2 folder. Exiting."
    exit
fi

grub_path="."
echo "Grub Path is: $grub_path"



theme_path="$grub_path/themes/bsol"

mkdir -p "$grub_path/themes"

cp -ru ./bsol/ $grub_path/themes/




