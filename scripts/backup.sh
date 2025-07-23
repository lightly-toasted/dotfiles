#!/bin/bash

echo $RESTIC_REPOSITORY
pacman -Qenq > /mnt/data/Backup/Packages/pkglist.txt
pacman -Qemq > /mnt/data/Backup/Packages/aurlist.txt

restic backup /mnt/data/Backup
