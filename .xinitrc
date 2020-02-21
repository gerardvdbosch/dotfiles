xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

xrandr --newmode "3840x2160_60.00"  712.34  3840 4152 4576 5312  2160 2161 2164 2235  -HSync +Vsync
xrandr --addmode eDP-1-1 "3840x2160_60.00"

xrandr --output eDP-1-1 --auto --scale 1x1 --dpi 192
xrandr --output eDP-1-1 --mode "3840x2160_60.00"

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)

exec i3
