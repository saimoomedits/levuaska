# ################## #
# BLACKCAT ZSH THEME #
# ################## #
# blackcat zsh theme is based on the parrot zsh-theme.


PROMPT=$'%{$fg[blue]%} %{$fg[green]%}%~ %{$(git_prompt_info)%}%{$fg[yellow]%} % %{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%} %{$fg_bold[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}%{$fg[red]%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"


