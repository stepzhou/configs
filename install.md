Installation Instructions
=========================

In case I ever need to re-image my install again.

Ubuntu
------

Installing a new image of Ubuntu.

* `sudo apt-get install` all the apt programs in programs.txt
* Find and install all the deb programs
* `git clone` this repo
* Soft links
    * Dropbox
    * .configs
* Disable online search results `Security & Privacy -> Search results`
* Enable brightness control

    $ sudo vim /usr/share/X11/xorg.conf.d/20-nvidia.conf

    Section "Device"
        Identifier "NVIDIA"
        Driver "nvidia"
        Option  "NoLogo" "True"
        Option "RegistryDwords" "EnableBrightnessControl=1"
    EndSection

* Start-up scripts
    * Esc, caps swap `setxkbmap -option caps:swapescape`
    * redshift

TODO
----

* Write a set-up script

