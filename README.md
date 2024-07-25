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

------------------------------------------------------------------------

## Install and update them all with ease

### *"*AM*" Application Manager* 
#### *Package manager, database & solutions for all AppImages and portable apps for GNU/Linux!*

[![Istantanea_2024-06-26_17-00-46 png](https://github.com/ivan-hc/AM/assets/88724353/671f5eb0-6fb6-4392-b45e-af0ea9271d9b)](https://github.com/ivan-hc/AM)

[![Readme](https://img.shields.io/github/stars/ivan-hc/AM?label=%E2%AD%90&style=for-the-badge)](https://github.com/ivan-hc/AM/stargazers) [![Readme](https://img.shields.io/github/license/ivan-hc/AM?label=&style=for-the-badge)](https://github.com/ivan-hc/AM/blob/main/LICENSE)

*"AM"/"AppMan" is a set of scripts and modules for installing, updating, and managing AppImage packages and other portable formats, in the same way that APT manages DEBs packages, DNF the RPMs, and so on... using a large database of Shell scripts inspired by the Arch User Repository, each dedicated to an app or set of applications.*

*The engine of "AM"/"AppMan" is the "APP-MANAGER" script which, depending on how you install or rename it, allows you to install apps system-wide (for a single system administrator) or locally (for each user).*

*"AM"/"AppMan" aims to be the default package manager for all AppImage packages, giving them a home to stay.*

*You can consult the entire **list of managed apps** at [**portable-linux-apps.github.io/apps**](https://portable-linux-apps.github.io/apps).*

## *Go to *https://github.com/ivan-hc/AM* for more!*

------------------------------------------------------------------------

| [***Install "AM"***](https://github.com/ivan-hc/AM) | [***See all available apps***](https://portable-linux-apps.github.io) | [***Support me on ko-fi.com***](https://ko-fi.com/IvanAlexHC) | [***Support me on PayPal.me***](https://paypal.me/IvanAlexHC) |
| - | - | - | - |

------------------------------------------------------------------------
