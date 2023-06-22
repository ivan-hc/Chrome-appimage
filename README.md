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

  
