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
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install



# 加载 powerlevel10k 主题
zinit ice depth=1; zinit load romkatv/powerlevel10k

if command -v lua &>/dev/null; then
  zinit ice lucid wait='1'
  zinit load skywind3000/z.lua
else
  echo "要想使用z(快速目录跳转),请下载lua"
fi
# zinit light zsh-users/zsh-completions
zinit load zsh-users/zsh-autosuggestions
zinit load zdharma/fast-syntax-highlighting
# zinit light zsh-users/zsh-syntax-highlighting
zinit wait lucid atload"zicompinit; zicdreplay" blockf for \
  zsh-users/zsh-completions

if command -v fzf &>/dev/null; then
  zinit ice lucid wait='1'
  zinit load aslingguang/fzf-tab-source
else
  echo "要想使用fzf-tab(tab命令补全),请下载fzf(模糊查找工具)"
fi

# source /home/lingguang/all/code/gitLib/fzf-tab-source/fzf-tab.plugin.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.zshrc
if [[ ! -f $HOME/.p10k.zsh ]]; then
  echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.p10k.zsh)" > $HOME/.p10k.zsh
fi  

if [[ ! -d $HOME/.config/zsh ]]; then
  mkdir -p $HOME/.config/zsh
fi  

if [[ ! -f $HOME/.config/zsh/alias.zsh ]]; then  
  echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.config/zsh/alias.zsh)" > $HOME/.config/zsh/alias.zsh
fi

if [[ ! -f $HOME/.config/zsh/path.zsh ]]; then  
  echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.config/zsh/path.zsh)" > $HOME/.config/zsh/path.zsh
fi

system_info=$(uname -a)

[[ ! -f $HOME/.p10k.zsh ]] || source $HOME/.p10k.zsh

# [[ ! -f /opt/miniconda/etc/profile.d/conda.sh ]] || source /opt/miniconda/etc/profile.d/conda.sh
# 命令别名
[[ ! -f $HOME/.config/zsh/alias.zsh ]] || source $HOME/.config/zsh/alias.zsh 

# 环境变量
[[ ! -f $HOME/.config/zsh/path.zsh ]] || source $HOME/.config/zsh/path.zsh 

# zoxide配置(快速目录跳转)
# eval "$(zoxide init zsh)"

# termux 配置
if [[ $system_info == *Android* ]]; then
  if [[ ! -d $HOME/.termux ]]; then
      mkdir -p $HOME/.termux   
  fi

  if [[ ! -f $HOME/.termux/termux.properties.bak && -f $HOME/.termux/termux.properties ]]; then
    mv $HOME/.termux/termux.properties $HOME/.termux/termux.properties.bak
    echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.termux/termux.properties)" > $HOME/.termux/termux.properties
  elif [[ ! -f $HOME/.termux/termux.properties ]]; then
    echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.termux/termux.properties)" > $HOME/.termux/termux.properties
  fi

  if command -v sshd &>/dev/null; then
    sshd
  fi
fi


update_config()
{
  echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.zshrc)" > $HOME/.zshrc
  echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.p10k.zsh)" > $HOME/.p10k.zsh

  if [[ ! -d $HOME/.config/zsh ]]; then
    mkdir -p $HOME/.config/zsh
  fi  
  echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.config/zsh/alias.zsh)" > $HOME/.config/zsh/alias.zsh
  echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.config/zsh/path.zsh)" > $HOME/.config/zsh/path.zsh

  # 如果是安卓设备，更新termux配置
  if [[ $system_info == *Android* ]]; then
    if [[ ! -d $HOME/.termux ]]; then
      mkdir -p $HOME/.termux   
    fi 
    echo "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/aslingguang/myzsh/HEAD/.termux/termux.properties)" > $HOME/.termux/termux.properties
  fi
}

remove_config()
{
  if [[ -d $HOME/.config/zsh ]]; then
    rm -rf $HOME/.config/zsh
  fi

  if [[ -f $HOME/.tldr_sources ]]; then
    rm -f $HOME/.tldr_sources
  fi

  if [[ -f $HOME/.p10k.zsh ]]; then
    rm -f $HOME/.p10k.zsh
  fi

  if [[ -f $HOME/.zshrc ]]; then
    rm -f $HOME/.zshrc
  fi

  if [[ $system_info == *Android* ]]; then
    if [[ -f $HOME/.termux/termux.properties.bak && -f $HOME/.termux/termux.properties ]]; then
      rm -f $HOME/.termux/termux.properties
      mv $HOME/.termux/termux.properties.bak $HOME/.termux/termux.properties
    fi
  fi

  echo "是否删除zint插件 (y/n): "
  read choice
  if [[ $choice == "y" || $choice == "Y" ]]; then
    rm -rf ${ZINIT_HOME}
    echo "删除zint插件"
  else
    echo "保留zint插件"
  fi

  echo "是否删除nvim配置 (y/n): "
  read choice
  if [[ $choice == "y" || $choice == "Y" ]]; then
    rm -rf ${NVIM_HOME}
    rm -rf $HOME/.local/share/nvim
    rm -rf $HOME/.local/state/nvim
    echo "删除nvim配置及插件"
  else
    echo "保留nvim配置及插件"
  fi
  
}
