#!/bin/sh
echo "+++++ STEP 1 +++++"
echo " Disk size "
sudo du -sh /*
echo " "

echo "+++++ STEP 2 +++++"
echo "Apt-get autoremove"
sudo apt-get autoremove
sudo apt autoremove
echo " "

echo "+++++ STEP 3 +++++"
echo "Cache size:"
sudo du -sh /var/cache/apt
echo "After"
sudo apt-get autoclean
sudo apt-get clean
sudo rm -rf /var/cache/fontconfig/
sudo rm -rf /var/cache/apt/
sudo du -sh /var/cache/apt
echo " "

echo "+++++ STEP 4 +++++"
echo "Clean Journal Logs"
echo " Journal logs disk usage:"
journalctl --disk-usage
echo " "
sudo journalctl --vacuum-time=1d
echo " "

echo "+++++ STEP 5 +++++"
echo "Remove older versions of snap"
sudo du -h /var/lib/snapd/snaps
sudo bash /home/nrod/Documents/Linux/Scripts/snapCLEAN.sh
echo " "
sudo du -h /var/lib/snapd/snaps
echo " "

echo "+++++ STEP 6 +++++" 
echo "Thumbnails Size"
sudo du -sh ~/.cache/thumbnails
sudo rm -rf ~/.cache/thumbnails
echo " "

echo "+++++ STEP 7 +++++"
echo "Delete temporary files"
sudo rm -rf /tmp/*
echo " "

echo "+++++ STEP 8 +++++"
echo " Instalation package and manuals"
sudo rm -rf /var/cache/pacman/
sudo rm -rf /var/cache/man/
echo " "

echo "+++++ STEP 9 +++++"
echo "Logs Deletion"
sudo rm -rf /var/log/apache2/*
sudo rm -rf /var/log/httpd/*









