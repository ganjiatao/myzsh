# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if command -v nvim &>/dev/null; then
    # install MyVim-starter
    NVIM_HOME="${NVIM_HOME:-${HOME}/.config/nvim}"
    if [ ! -d "${NVIM_HOME}" ]; then
        git clone https://github.com/aslingguang/MyVim-starter.git "${NVIM_HOME}"
    fi
fi

# install zinit
ZINIT_HOME="${ZINIT_HOME:-${XDG_DATA_HOME:-${HOME}/.local/share}/zinit}"
if [ ! -d "${ZINIT_HOME}" ]; then
    bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
fi



### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk


# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install



# 加载 powerlevel10k 主题
zinit ice depth=1; zinit load romkatv/powerlevel10k

zinit ice lucid wait='1'
zinit load skywind3000/z.lua
# zinit light zsh-users/zsh-completions
zinit load zsh-users/zsh-autosuggestions
zinit load zdharma/fast-syntax-highlighting
# zinit light zsh-users/zsh-syntax-highlighting
zinit wait lucid atload"zicompinit; zicdreplay" blockf for \
  zsh-users/zsh-completions

zinit ice lucid wait='1'
zinit load aslingguang/fzf-tab-source

# source /home/lingguang/all/code/gitLib/fzf-tab-source/fzf-tab.plugin.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.zshrc
if [[ ! -f ~/.p10k.zsh ]]; then
  echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.p10k.zsh)" > ~/.p10k.zsh
fi  

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# [[ ! -f /opt/miniconda/etc/profile.d/conda.sh ]] || source /opt/miniconda/etc/profile.d/conda.sh
# 命令别名
[[ ! -f ~/.config/zsh/alias.zsh ]] || source ~/.config/zsh/alias.zsh 

# 环境变量
[[ ! -f ~/.config/zsh/path.zsh ]] || source ~/.config/zsh/path.zsh 

# zoxide配置(快速目录跳转)
# eval "$(zoxide init zsh)"

