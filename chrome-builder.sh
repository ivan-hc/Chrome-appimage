#!/bin/sh

# ------------------------------------ STABLE
APP=google-chrome
mkdir tmp
cd ./tmp
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-$(uname -m).AppImage -O appimagetool
chmod a+x ./appimagetool

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
ar x ./*.deb
tar xf ./data.tar.xz
mkdir $APP.AppDir
mv ./opt/google/chrome/* ./$APP.AppDir/
mv ./usr/share/applications/*.desktop ./$APP.AppDir/
sed -i 's#Exec=/usr/bin/google-chrome-stable#Exec=google-chrome#g' ./$APP.AppDir/*.desktop
cp ./$APP.AppDir/*128.png ./$APP.AppDir/$APP.png

tar xf ./control.tar.xz
VERSION=$(cat control | grep Version | cut -c 10-)

cat >> ./$APP.AppDir/AppRun << 'EOF'
#!/bin/sh
APP=google-chrome
HERE="$(dirname "$(readlink -f "${0}")")"
export UNION_PRELOAD="${HERE}"
exec "${HERE}"/$APP "$@"
EOF
chmod a+x ./$APP.AppDir/AppRun
ARCH=x86_64 ./appimagetool -n ./$APP.AppDir
cd ..
mv ./tmp/*AppImage ./Google-Chrome-Stable-$VERSION-x86_64.AppImage

# ------------------------------------ BETA
APP=google-chrome-beta
mkdir tmp2
cd ./tmp2
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-$(uname -m).AppImage -O appimagetool
chmod a+x ./appimagetool

wget https://dl.google.com/linux/direct/google-chrome-beta_current_amd64.deb
ar x ./*.deb
tar xf ./data.tar.xz
mkdir $APP.AppDir
mv ./opt/google/chrome-beta/* ./$APP.AppDir/
mv ./usr/share/applications/*.desktop ./$APP.AppDir/
sed -i 's#Exec=/usr/bin/google-chrome-beta#Exec=google-chrome#g' ./$APP.AppDir/*.desktop
cp ./$APP.AppDir/*128_beta.png ./$APP.AppDir/$APP.png

tar xf ./control.tar.xz
VERSION=$(cat control | grep Version | cut -c 10-)

cat >> ./$APP.AppDir/AppRun << 'EOF'
#!/bin/sh
APP=google-chrome-beta
HERE="$(dirname "$(readlink -f "${0}")")"
export UNION_PRELOAD="${HERE}"
exec "${HERE}"/$APP "$@"
EOF
chmod a+x ./$APP.AppDir/AppRun
ARCH=x86_64 ./appimagetool -n ./$APP.AppDir
cd ..
mv ./tmp2/*AppImage ./Google-Chrome-Beta-$VERSION-x86_64.AppImage

# ------------------------------------ UNSTABLE
APP=google-chrome-unstable
mkdir tmp3
cd ./tmp3
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-$(uname -m).AppImage -O appimagetool
chmod a+x ./appimagetool

wget https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb
ar x ./*.deb
tar xf ./data.tar.xz
mkdir $APP.AppDir
mv ./opt/google/chrome-unstable/* ./$APP.AppDir/
mv ./usr/share/applications/*.desktop ./$APP.AppDir/
sed -i 's#Exec=/usr/bin/google-chrome-unstable#Exec=google-chrome#g' ./$APP.AppDir/*.desktop
cp ./$APP.AppDir/*128_dev.png ./$APP.AppDir/$APP.png

tar xf ./control.tar.xz
VERSION=$(cat control | grep Version | cut -c 10-)

cat >> ./$APP.AppDir/AppRun << 'EOF'
#!/bin/sh
APP=google-chrome-unstable
HERE="$(dirname "$(readlink -f "${0}")")"
export UNION_PRELOAD="${HERE}"
exec "${HERE}"/$APP "$@"
EOF
chmod a+x ./$APP.AppDir/AppRun
ARCH=x86_64 ./appimagetool -n ./$APP.AppDir
cd ..
mv ./tmp3/*AppImage ./Google-Chrome-Unstable-$VERSION-x86_64.AppImage