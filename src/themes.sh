#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"
TRANSPARENT_THEME="$(tmux show-option -gv @tokyo-night-tmux_transparent)"

case $SELECTED_THEME in
"kanso-ink")
  declare -A THEME=(
    ["background"]="#14171d"
    ["foreground"]="#c5c9c7"
    ["black"]="#14171d"
    ["blue"]="#8ba4b0"
    ["cyan"]="#8ea4a2"
    ["green"]="#8a9a7b"
    ["magenta"]="#a292a3"
    ["red"]="#c4746e"
    ["white"]="#a4a7a4"
    ["yellow"]="#c4b28a"

    ["bblack"]="#5C6066"
    ["bblue"]="#7fb4ca"
    ["bcyan"]="#7aa89f"
    ["bgreen"]="#87a987"
    ["bmagenta"]="#938aa9"
    ["bred"]="#e46876"
    ["bwhite"]="#c5c9c7"
    ["byellow"]="#e6c384"
  )
  ;;

"kanso-zen")
  declare -A THEME=(
    ["background"]="#090E13"
    ["foreground"]="#c5c9c7"
    ["black"]="#090E13"
    ["blue"]="#8ba4b0"
    ["cyan"]="#8ea4a2"
    ["green"]="#8a9a7b"
    ["magenta"]="#a292a3"
    ["red"]="#c4746e"
    ["white"]="#a4a7a4"
    ["yellow"]="#c4b28a"

    ["bblack"]="#5C6066"
    ["bblue"]="#7fb4ca"
    ["bcyan"]="#7aa89f"
    ["bgreen"]="#87a987"
    ["bmagenta"]="#938aa9"
    ["bred"]="#e46876"
    ["bwhite"]="#c5c9c7"
    ["byellow"]="#e6c384"
  )
  ;;

"kanso-pearl")
  declare -A THEME=(
    ["background"]="#f2f1ef"
    ["foreground"]="#22262D"
    ["black"]="#22262D"
    ["blue"]="#4d699b"
    ["cyan"]="#597b75"
    ["green"]="#6f894e"
    ["magenta"]="#b35b79"
    ["red"]="#c84053"
    ["white"]="#9F9F99"
    ["yellow"]="#77713f"

    ["bblack"]="#5C6066"
    ["bblue"]="#6693bf"
    ["bcyan"]="#5e857a"
    ["bgreen"]="#6e915f"
    ["bmagenta"]="#624c83"
    ["bred"]="#d7474b"
    ["bwhite"]="#f2f1ef"
    ["byellow"]="#836f4a"
  )
  ;;

*)
  # Default to kanso-ink theme
  declare -A THEME=(
    ["background"]="#14171d"
    ["foreground"]="#c5c9c7"
    ["black"]="#14171d"
    ["blue"]="#8ba4b0"
    ["cyan"]="#8ea4a2"
    ["green"]="#8a9a7b"
    ["magenta"]="#a292a3"
    ["red"]="#c4746e"
    ["white"]="#a4a7a4"
    ["yellow"]="#c4b28a"

    ["bblack"]="#5C6066"
    ["bblue"]="#7fb4ca"
    ["bcyan"]="#7aa89f"
    ["bgreen"]="#87a987"
    ["bmagenta"]="#938aa9"
    ["bred"]="#e46876"
    ["bwhite"]="#c5c9c7"
    ["byellow"]="#e6c384"
  )
  ;;
esac

# Override background with "default" if transparent theme is enabled
if [ "${TRANSPARENT_THEME}" == 1 ]; then
  THEME["background"]="default"
fi

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
