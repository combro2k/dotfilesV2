if status --is-interactive; and status --is-login
  [ -f ~/.base16_theme ] && eval sh '"'(realpath ~/.base16_theme)'"'
end
