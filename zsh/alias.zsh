# 命令快捷方式
alias vim="nvim"
alias ls="exa"
# alias cd="z"

# alias xlsx="(xlsx2csv '$1') | xsv table | bat -ltsv --color=always "


# 应用快捷方式
# alias cursor="/opt/Cursor-0.1.6.AppImage &>/dev/null &"
# alias linuxqq="linuxqq &>/dev/null &"
# alias dbeaver="dbeaver &>/dev/null &"
# alias feishu="/opt/bytedance/feishu/feishu  &>/dev/null &"
# alias qqmusic="/opt/qqmusic/qqmusic --no-sandbox &>/dev/null &"
alias lx-music="/opt/appimages/lx-music-desktop.AppImage &>/dev/null &"
# alias clash="/opt/clash-for-windows-chinese-git/cfw &>/dev/null &"
alias cfw="cfw &>/dev/null &"
alias edge=" /opt/microsoft/msedge/microsoft-edge &>/dev/null &"
# alias juicebox="java -jar /opt/juicebox.jar"
alias proxyw="export https_proxy=http://192.168.0.1:7890 && export http_proxy=http://192.168.0.1:7890 && echo Proxy On"
alias proxy-on="export https_proxy=http://127.0.0.1:7890 && export http_proxy=http://127.0.0.1:7890 && echo Proxy On"
alias proxy-off="unset http_proxy https_proxy && echo Proxy Off"
alias sqlr="mysql -u root -p"

alias fyb="trans -e bing -b"

# windows
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

# v2raya的web界面地址：http://192.168.0.2:2017/
eval $(thefuck --alias)
# 
# alias fts='/home/lingguang/all/code/gitLib/fzf-tab-source/fts-auto.sh'
# fzf-tab配置
# source /home/lingguang/all/code/gitLib/fzf-tab-source/fzf-tab.plugin.zsh




