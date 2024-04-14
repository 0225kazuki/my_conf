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

export PYTHONSTARTUP=~/.pythonrc.py

autoload -Uz compinit
compinit -u

# rm -> mv trash
alias rm='rmtrash'

# docker aliases
alias docker-stop-all='docker stop $(docker ps -q)'

alias movtogif='(){ffmpeg -i $1 -vf scale=640:-1 -r 12 $2}'

# aliases of git/github commands
alias g='cd $(ghq root)/$(ghq list | peco)'
# alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'

#export LSCOLORS=Cxfxcxdxbxegedacagacad
export LSCOLORS=Cxfxcxdxhbegedacagacad
#export LS_COLORS='di=31:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'


export PATH=$PATH:/usr/local/Cellar/isc-dhcp/4.3.5/sbin
export PATH=$PATH:/usr/local/Cellar/mtr/0.92/sbin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/bin

export PATH=$PATH:${0:A:h}/google-cloud-sdk/bin
export PATH=$PATH:$HOME/.ndenv/bin
eval "$(ndenv init -)"

#補完にも同じ色をつける
#if [ -n "$LS_COLORS" ]; then
#    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#fi

#zstyle ':completion:*' list-colors "${LS_COLORS}" 
#zstyle ':completion:*' list-colors "${LSCOLORS}" 

#alias gls="gls --color"

# End of lines added by compinstall
export HOMEBREW_GITHUB_API_TOKEN=5da01720577407fe0a90bbb4621d97ebbd9763da

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH=$PATH:/Users/kazuki/Library/Android/sdk/platform-tools
eval "$(rbenv init -)"


# Expo EAS Android Build usage
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"
export PATH="$PATH:$JAVA_HOME/bin"
export ANDROID_HOME=/Users/kazuki/Library/Android/sdk/
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kazuki/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kazuki/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/kazuki/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kazuki/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kazuki/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kazuki/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kazuki/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kazuki/google-cloud-sdk/completion.zsh.inc'; fi
