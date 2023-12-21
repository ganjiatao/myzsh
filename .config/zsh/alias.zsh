# 命令快捷方式
if command -v exa &>/dev/null; then
  alias ls='exa'
  alias l='exa -lbah --icons'
  alias la='exa -labgh --icons'
  alias ll='exa -lbg --icons'
  alias lsa='exa -lbagR --icons'
  alias lst='exa -lTabgh --icons' # 输入lst,将展示类似于tree的树状列表。
else 
  alias ls='ls --color=auto'
  alias lst='tree -pCsh'
  alias l='ls -lah'
  alias la='ls -lAh'
  alias ll='ls -lh'
  alias lsa='ls -lah'
fi

if command -v bat &>/dev/null; then
  alias cat='bat -pp'
fi

if command -v nvim &>/dev/null; then
  alias vim="nvim"
fi

if command -v xclip &>/dev/null; then
  alias copy="xclip -selection c" # 复制内容到剪贴板(屏幕不显示输出)
  alias cout="tee /dev/tty  | xclip -selection clipboard" # 复制内容到剪贴板(屏幕显示输出)
fi
alias ...='cd ../..' 
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# alias cd="z"

# alias xlsx="(xlsx2csv '$1') | xsv table | bat -ltsv --color=always "


# 应用快捷方式
# alias cursor="/opt/Cursor-0.1.6.AppImage &>/dev/null &"
# alias linuxqq="linuxqq &>/dev/null &"
if command -v dbeaver &>/dev/null; then
  alias dbeaver="dbeaver &>/dev/null &"
fi
# alias feishu="/opt/bytedance/feishu/feishu  &>/dev/null &"
# alias qqmusic="/opt/qqmusic/qqmusic --no-sandbox &>/dev/null &"
# alias lx-music="/opt/appimages/lx-music-desktop.AppImage &>/dev/null &"
# alias clash="/opt/clash-for-windows-chinese-git/cfw &>/dev/null &"

if command -v cfw &>/dev/null; then
  alias cfw="cfw &>/dev/null &"
fi

if command -v microsoft-edge-stable &>/dev/null; then
  alias edge="microsoft-edge-stable &>/dev/null &"
fi
# alias juicebox="java -jar /opt/juicebox.jar"
if command -v aichat &>/dev/null; then
  alias ai="aichat"
fi

proxy_port=2080
alias proxyw="export https_proxy=http://192.168.0.1:$proxy_port && export http_proxy=http://192.168.0.1:$proxy_port && echo Proxy On"
alias proxy-on="export https_proxy=http://127.0.0.1:$proxy_port && export http_proxy=http://127.0.0.1:$proxy_port && echo Proxy On"
alias proxy-off="unset http_proxy https_proxy && echo Proxy Off"

if command -v mysql &>/dev/null; then
  alias sqlr="mysql -u root -p"
fi

if command -v trans &>/dev/null; then
  alias fyb="trans -e bing -b"
fi

# windows
if [[ $(uname -r) == *WSL* ]]; then
  alias addip="powershell.exe -command 'netsh interface ip add address \"vEthernet (WSL)\" 192.168.0.1 255.255.255.0'"
  alias update="sudo reflector --verbose --country 'China' -l 200 -p https --sort rate --save /etc/pacman.d/mirrorlist"
  alias utools="/mnt/c/Users/LINGGUANG/AppData/Local/Programs/utools/uTools.exe"

  alias cmd="cmd.exe"
  alias winget="winget.exe"
  alias mklink="cmd.exe /c mklink"
  alias pwsh="powershell.exe"
  alias pwshc="powershell.exe -command"
  alias cmdc="cmd.exe /c"
  alias wsl="wsl.exe"
  alias arch2="/mnt/e/WSL/Arch2/arch2.exe"
  alias pot="/mnt/d/APP/PotPlayer/PotPlayerMini64.exe"
  alias pic="/mnt/d/APP/XnViewMP/xnviewmp.exe"
  alias fm="explorer.exe"
fi  
# v2raya的web界面地址：http://192.168.0.2:2017/

if command -v thefuck &>/dev/null; then
  eval $(thefuck --alias)
fi  

# 
# alias fts='/home/lingguang/all/code/gitLib/fzf-tab-source/fts-auto.sh'
# fzf-tab配置
# source /home/lingguang/all/code/gitLib/fzf-tab-source/fzf-tab.plugin.zsh




