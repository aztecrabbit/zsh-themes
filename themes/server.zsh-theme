username_hostname () {
    echo '%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%})%n@%m%{$reset_color%}'
}

path () {
    echo '%{$fg_bold[blue]%}%~%{$reset_color%}'
}

git_prompt_info_custom () {
    echo '%{$fg_bold[yellow]%}$(git_prompt_info)'
}

prompt_char () {
    echo '%{$fg_bold[magenta]%}$([ $UID -eq 0 ] && echo "#" || echo "$")%{$reset_color%} '
}

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "

PROMPT="[server] $(username_hostname) $(path) $(git_prompt_info_custom)$(prompt_char)"
