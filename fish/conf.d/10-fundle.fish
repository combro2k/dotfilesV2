if status --is-interactive
  if not functions -q fundle
    eval (curl -sfL https://git.io/fundle-install)
  end

  # Fish git prompt
  set fish_prompt_pwd_dir_length 0
  #set -g theme_nerd_fonts yes

  # Use FZF new keybindings
  set -x FZF_LEGACY_KEYBINDINGS 0

  # Different colors for the theme
  set -g theme_color_scheme base16-dark

  # list plugin dependencies
  fundle plugin 'jorgebucaran/fish-getopts'

  fundle plugin 'decors/fish-colored-man'

  fundle plugin 'danhper/oh-my-fish-core'
  fundle plugin 'oh-my-fish/plugin-bang-bang'
  fundle plugin 'oh-my-fish/plugin-license'
  fundle plugin 'oh-my-fish/plugin-sudope'

  fundle plugin 'tuvistavie/fish-completion-helpers'
  fundle plugin 'tuvistavie/fish-asdf'

  fundle plugin 'combro2k/fish-fzf'
  fundle plugin 'combro2k/fish-sift'

  fundle plugin 'edc/bass'

  # Theme
  fundle plugin 'oh-my-fish/theme-bobthefish'

  fundle init
end

