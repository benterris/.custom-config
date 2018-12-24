ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}(%{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[yellow]%}(%{$fg[green]%}v"

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo \>; fi
}

PROMPT='%(?,,%{$fg[red]%}FAIL: $?
%{$reset_color%})%{$fg[white]%}%n%{$reset_color%}@%{$fg[white]%}%m%{$reset_color%}: %{$fg[green]%}%~%{$reset_color%}$(git_prompt_info)
%{$fg_bold[white]%}%_$(prompt_char) %{$reset_color%}'
RPROMPT='%{$fg[red]%}[%*]%{$reset_color%}'
