# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -e

setopt no_beep

zstyle ':completion:*' list-colors 'di=01;32' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

alias ls="ls -FG"
alias ll='ls -lah -GF'


#cd 関係
setopt auto_cd

#cdを打ったら自動的にlsを打ってくれる関数
function cd(){
    builtin cd $@ && ls;
}


autoload colors
colors
PROMPT="%{$fg[cyan]$bg[gray]%}%n %% %{$reset_color%}"
RPROMPT='[%d]'

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/kazuki/.zshrc'

#for zsh-completions(動的補完)
#fpath=(/usr/local/share/zsh-completions $fpath)

#[ -f ~/.zsh/plugin/incr*.zsh ] && source ~/.zsh/plugin/incr*.zsh

# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default

# ここで指定した文字は単語区切りとみなされる
# / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完でキャッシュを使う
zstyle ':completion:*' use-cache true

# 補完候補を矢印キーなどで選択出来るようにする。
zstyle ':completion:*:default' menu select = 1
zstyle ':completion:*' completer _expand _complete _approximate _match _expand _history _prefix

#pyenv 環境構築
export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
	export PATH=${PYENV_ROOT}/bin:$PATH
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi

export PYTHONSTARTUP=~/.pythonrc.py

autoload -Uz compinit
compinit -u

# rm -> mv trash
alias rm='rmtrash'

#export LSCOLORS=Cxfxcxdxbxegedacagacad
export LSCOLORS=Cxfxcxdxhbegedacagacad
#export LS_COLORS='di=31:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'


export PATH=$PATH:/usr/local/Cellar/isc-dhcp/4.3.5/sbin
export PATH=$PATH:/usr/local/Cellar/mtr/0.92/sbin

#補完にも同じ色をつける
#if [ -n "$LS_COLORS" ]; then
#    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#fi

#zstyle ':completion:*' list-colors "${LS_COLORS}" 
#zstyle ':completion:*' list-colors "${LSCOLORS}" 

#alias gls="gls --color"

# End of lines added by compinstall
