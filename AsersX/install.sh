pkg update -y && pkg upgrade -y
pkg install wget git proot-distro pulseaudio x11-repo -y
wget -P /sdcard https://github.com/termux/termux-x11/releases/download/nightly/app-universal-debug.apk
cp pdlogin pdloginx $PREFIX/bin
chmod +x $PREFIX/bin/pdlogin $PREFIX/bin/pdloginx
cp asersx.sh $PREFIX/etc/proot-distro
pd list
sleep 5
pd install asersx 
echo Installation is complete. Install the Termux-x11 apk from 
echo /sdcard or internal storage. If you want to start Xfce4, use pdloginx. If you want to start normally, use pdlogin.
rm -rf asersx.sh pdlogin pdloginx
