local ret_status="%(?:%{$fg_bold[green]%}0:%{$fg_bold[red]%}$?)"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

set_prompt (){
  n1=$(($RANDOM%4))
  symbol=("🍏" "🍒" "🍓" "🍇" "🍉")
  PROMPT='${ret_status} ${symbol[$n1]}  %{%{$reset_color%}$fg[cyan]%}%c/$(git_current_branch) $(git_prompt_short_sha) $(git_prompt_status) %{$reset_color%}$ '
}
set_prompt
