# fix_broadcom_wireless_ubuntu #

This fix is based on [this](http://askubuntu.com/a/553619) askubuntu answer.

After a fresh install you need to re-insert your install CD / USB and place the following files
on your desktop:

* pool > restricted > b > bcmwl > bcmwl-kernel-source*.deb
* pool > main > d > dkms > dkms*.deb

then run (although most likely type as you have no internet connection) the apply_fix.bash
script provided in this repo.

done.
