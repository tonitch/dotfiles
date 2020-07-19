Display="DVI-D-0" #find it with xrandr

Stylusid=$(xinput | grep -Po 'Wacom (.*)' | grep -Po 'id=(\d*)' | grep -Po '\d*')

$(echo $Stylusid | tr ' ' '\n' | xargs -i xinput map-to-output {} $Display)
