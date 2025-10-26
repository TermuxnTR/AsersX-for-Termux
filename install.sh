pkg update -y && pkg upgrade -y
pkg install wget git proot-distro pulseaudio x11-repo -y
wget -P /sdcard https://download1500.mediafire.com/l55o6kxgzcfgHR111iSlgHgk2u1BHv_xHUdZQcRzsCxbSTldsAiXcNTHWJ5K7LLzlNbDha3VtXj41V_6-IhMaVDRqCpqQ8SZ_jlKUqI6LWcdhoRCPEuaiZd0etW3MB83wO8AXPGyB2iFqIYis4dXCD43q50Hf_wuCWSnLI_xbGnl5g/4lop2uu8li5mfnr/Termux-x11.apk 
pkg install termux-x11* -y
wget https://download1479.mediafire.com/uowkf6ywvddgCk-FJo1tcv2zPuFRHMMfYsPXp5dInrbvrVR1Enhl8ZqsFw0N8fMMo2uyq7iIe0U5lvjEQKPewscyZaiQsG41vIm3tw1a-3MwGNMOfEMDYcMFL2_XQT0mEDVn95R66Yabh8S5uSxJARJg3KsJnSfluH9LVQuAEECzMA/8pdex7hcpif3j81/asersx.sh
wget https://download1979.mediafire.com/luo0hktybpvgzVfs83VsF6hxiBDkYOX91ykptq2gVkM47aUiohxL_O8st7g2oNHDIfNr954ebB2NOGqt_UsNnxvWj6p03ibw-KNIqxVs5kTA15GK_L1w3F7fWoCDLXPjshVs-yJJRHUIxIDhAHaX8FEcgHdMAY2PfzlqALiUJlqp3A/o2k10l5daeuvlom/pdloginx
wget https://download843.mediafire.com/m6dj0yx2visgeccEicw9NtH6RYaAIEgHPEa5zTTYFfiBusFBBoC1M6kstmdGy9kkB-i-EcP1duGai5dxESMZqGTAyJQ4-XMP4azzYO6cRql8lnK7V6EKslQoCYGb4yASq9npCuFh4mbqTH8tzhRvglVvlYCA2iNqBO0PV53OzCYtRw/opatmhzs38rnj8n/pdlogin
cp pdlogin pdloginx $PREFIX/bin
chmod +x pdlogin pdloginx
cp asersx.sh $PREFIX/etc/proot-distro
pd list
sleep 5
pd install asersx 
echo Installation is complete. Install the Termux-x11 apk from 
echo /sdcard or internal storage. If you want to start Xfce4, use pdloginx. If you want to start normally, use pdlogin.
rm -rf asersx.sh pdlogin pdloginx
