# Fix Broadcom Wireless Ubuntu

Based on [this](http://askubuntu.com/a/553619) askubuntu answer.

After a fresh install you need to re-insert your install CD / USB and copy the following into the current directory:

* pool > restricted > b > bcmwl > bcmwl-kernel-source*.deb
* pool > main > d > dkms > dkms*.deb

Now you can run:

```bash
dpkg -i dkms*.deb;
dpkg -i bcmwl*.deb;
```

Enjoy your internet :)