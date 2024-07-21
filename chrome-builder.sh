#!/bin/sh

APP=google-chrome

# TEMPORARY DIRECTORY
mkdir -p tmp
cd ./tmp || exit 1

# DOWNLOAD APPIMAGETOOL
if ! test -f ./appimagetool; then
	wget -q "$(wget -q https://api.github.com/repos/probonopd/go-appimage/releases -O - | sed 's/"/ /g; s/ /\n/g' | grep -o 'https.*continuous.*tool.*86_64.*mage$')" -O appimagetool
	chmod a+x ./appimagetool
fi

# CREATE CHROME BROWSER APPIMAGES

_create_chrome_appimage(){
	if ! test -f ./*.snap; then
		if wget --version | head -1 | grep -q ' 1.'; then
			wget -q --no-verbose --show-progress --progress=bar https://dl.google.com/linux/direct/"$APP"-"$CHANNEL"_current_amd64.deb
		else
			wget https://dl.google.com/linux/direct/"$APP"-"$CHANNEL"_current_amd64.deb
		fi
	fi
	ar x ./*.deb
	tar xf ./data.tar.xz
	mkdir "$APP".AppDir
	mv ./opt/google/chrom*/* ./"$APP".AppDir/
	mv ./usr/share/applications/*.desktop ./"$APP".AppDir/
	sed -i "s#Exec=/usr/bin/google-chrome-$CHANNEL#Exec=google-chrome#g" ./"$APP".AppDir/*.desktop
	if [ "$CHANNEL" = "stable" ]; then
		cp ./"$APP".AppDir/*128.png ./"$APP".AppDir/"$APP".png
	else
		cp ./"$APP".AppDir/*128*png ./"$APP".AppDir/"$APP"-"$CHANNEL".png
	fi
	tar xf ./control.tar.xz
	VERSION=$(cat control | grep Version | cut -c 10-)

	cat <<-'HEREDOC' >> ./"$APP".AppDir/AppRun
	#!/bin/sh
	APP=CHROME
	HERE="$(dirname "$(readlink -f "${0}")")"
	export UNION_PRELOAD="${HERE}"
	exec "${HERE}"/$APP "$@"
	HEREDOC
	chmod a+x ./"$APP".AppDir/AppRun
	if [ "$CHANNEL" = "stable" ]; then
		sed -i "s/CHROME/$APP/g" ./"$APP".AppDir/AppRun
	else
		sed -i "s/CHROME/$APP-$CHANNEL/g" ./"$APP".AppDir/AppRun
	fi
	ARCH=x86_64 VERSION=$(./appimagetool -v | grep -o '[[:digit:]]*') ./appimagetool -s ./"$APP".AppDir
	mv ./*.AppImage ./Google-Chrome-"$CHANNEL"-"$VERSION"-x86_64.AppImage || exit 1
}

CHANNEL="stable"
mkdir -p "$CHANNEL" && cp ./appimagetool ./"$CHANNEL"/appimagetool && cd "$CHANNEL" || exit 1
_create_chrome_appimage
cd ..
mv ./"$CHANNEL"/*.AppImage ./

CHANNEL="beta"
mkdir -p "$CHANNEL" && cp ./appimagetool ./"$CHANNEL"/appimagetool && cd "$CHANNEL" || exit 1
_create_chrome_appimage
cd ..
mv ./"$CHANNEL"/*.AppImage ./

CHANNEL="unstable"
mkdir -p "$CHANNEL" && cp ./appimagetool ./"$CHANNEL"/appimagetool && cd "$CHANNEL" || exit 1
_create_chrome_appimage
cd ..
mv ./"$CHANNEL"/*.AppImage ./

cd ..
mv ./tmp/*.AppImage ./
