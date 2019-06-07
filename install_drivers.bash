#!/usr/bin/env bash

readonly whoAmI=$(whoami);

if [[ ${whoAmI} != 'root' ]]
then
    echo 'You need to run this script as root';
    exit;
fi

readonly dkms='dkms*.deb';
readonly bcmwl='bcmwl*.deb';

if [[ ! -f ${dkms} || ! -f ${bcmwl} ]]
then
    echo "
Please re-insert your installation CD / USB and copy the following into the current directory:

    - pool > restricted > b > bcmwl > bcmwl-kernel-source*.deb
    - pool > main > d > dkms > dkms*.deb
";

    exit;
fi

echo 'Installing drivers';

dpkg -i ${dkms};
dpkg -i ${bcmwl};

echo 'Done :)';