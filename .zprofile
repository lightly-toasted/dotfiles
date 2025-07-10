export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export QT_QPA_PLATFORM=wayland
export SDL_VIDEODRIVER=wayland

if uwsm check may-start && uwsm select; then
	exec uwsm start default
fi
