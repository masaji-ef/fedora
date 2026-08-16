#!/usr/bin/sh

export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP="${XDG_SESSION_DESKTOP:-sway}"
export XDG_SESSION_TYPE=wayland

VARIABLES="DESKTOP_SESSION XDG_CURRENT_DESKTOP XDG_SESSION_DESKTOP XDG_SESSION_TYPE"
VARIABLES="${VARIABLES} DISPLAY I3SOCK SWAYSOCK WAYLAND_DISPLAY"
VARIABLES="${VARIABLES} XCURSOR_THEME XCURSOR_SIZE"

if hash dbus-update-activation-environment 2>/dev/null; then
  dbus-update-activation-environment --systemd ${VARIABLES}
fi

systemctl --user reset-failed
systemctl --user import-environment ${VARIABLES}

if systemctl --user --quiet list-unit-files sway-session.target >/dev/null 2>&1; then
  systemctl --user start sway-session.target
fi
