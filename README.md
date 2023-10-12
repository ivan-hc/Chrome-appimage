# Chrome-appimage
Unofficial AppImages of Google Chrome Stable, Beta and Unstable.

NOTE: This wrapper is not verified by, affiliated with, or supported by Google.

### Why AppImages?
I chose this format because it takes up half the disk space of the deb archive when unpacked. Furthermore, AppImages have the particularity of being able to be isolated in a customized $HOME folder (just create one with the same name as the AppImage and with the ".home" extension), preventing the cursed dotfiles from dirtying the main $HOME folder.

Not to mention that AppImages are portable, you can put them on a USB stick and you can use them wherever you want.

### What means Unofficial?
It means that if you want the version developed by the main creator of the software (ie Google) you have to go download and install the deb or rpm package officially released by them.

My versions of Chrome in Appimage format, even if they work, do not guarantee the 100% compatibility that the software from the manufacturer's website can guarantee. It requires additional dependencies, while in my case it was enough for me to extract the deb package and start the program inside it normally, and everything worked (but of course everything depends on your use case). If this package works for you you are welcome to use it at your own risk.

# What each AppImage contains?
Only the content of /opt/google/chrome*, in addition there are the desktop file, the icon and the AppRun needed to bundle the AppImage.

To extract the packages do:

    chmod a+x ./*AppImage
    ./*AppImage --appimage-extract

Here are the sources of the deb packages used in these three AppImages:
- Stable https://www.google.com/chrome/
- Beta https://www.google.com/chrome/beta/
- Unstable/Dev https://www.google.com/chrome/dev/

---------------------------------

## Install and update it with ease

I wrote two bash scripts to install and manage the applications: [AM](https://github.com/ivan-hc/AM-Application-Manager) and [AppMan](https://github.com/ivan-hc/AppMan). Their dual existence is based on the needs of the end user.

| [**"AM" Application Manager**](https://github.com/ivan-hc/AM-Application-Manager) |
| -- |
| <sub>***If you want to install system-wide applications on your GNU/Linux distribution in a way that is compatible with [Linux Standard Base](https://refspecs.linuxfoundation.org/lsb.shtml) (all third-party apps must be installed in dedicated directories under `/opt` and their launchers and binaries in `/usr/local/*` ...), just use ["AM" Application Manager](https://github.com/ivan-hc/AM-Application-Manager). This app manager requires root privileges only to install / remove applications, the main advantage of this type of installation is that the same applications will be available to all users of the system.***</sub>
[![Readme](https://img.shields.io/github/stars/ivan-hc/AM-Application-Manager?label=%E2%AD%90&style=for-the-badge)](https://github.com/ivan-hc/AM-Application-Manager/stargazers) [![Readme](https://img.shields.io/github/license/ivan-hc/AM-Application-Manager?label=&style=for-the-badge)](https://github.com/ivan-hc/AM-Application-Manager/blob/main/LICENSE)

| [**"AppMan"**](https://github.com/ivan-hc/AppMan)
| --
| <sub>***If you don't want to put your app manager in a specific path but want to use it portable and want to install / update / manage all your apps locally, download ["AppMan"](https://github.com/ivan-hc/AppMan) instead. With this script you will be able to decide where to install your applications (at the expense of a greater consumption of resources if the system is used by more users). AppMan is portable, all you have to do is write the name of a folder in your `$HOME` where you can install all the applications available in [the "AM" database](https://github.com/ivan-hc/AM-Application-Manager/tree/main/programs), and without root privileges.***</sub>
[![Readme](https://img.shields.io/github/stars/ivan-hc/AppMan?label=%E2%AD%90&style=for-the-badge)](https://github.com/ivan-hc/AppMan/stargazers) [![Readme](https://img.shields.io/github/license/ivan-hc/AppMan?label=&style=for-the-badge)](https://github.com/ivan-hc/AppMan/blob/main/LICENSE)  
