#!/usr/bin/env bash

test ! -L ~/.config/kitty/theme.conf && echo "Not updated kitty theme due custom theme" && exit 0

ln -fs ~/.config/kitty/colors/base16-$BASE16_THEME.conf ~/.config/kitty/theme.conf

echo -e "\e[93mUpdated \e[31m.config/kitty/theme.conf\e[0m"
