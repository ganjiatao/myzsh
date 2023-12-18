# echo 'root' | sudo -S ln -s /mnt/wslg/.X11-unix /tmp/.X11-unix &> /dev/null
if [[ $(locale 2>/dev/null) == *zh_CN.UTF-8* ]]; then
  export LANG="zh_CN.UTF-8"
  export LC_ALL="zh_CN.UTF-8"
fi   

# miniconda3环境变量
if [[ -f "/opt/miniconda3" ]]; then
  export PATH="/opt/miniconda3/bin:$PATH"  # commented out by conda initialize
  export PATH="$PATH:~/.local/bin"

  # 解决clear在anconda环境下无法使用
  export TERMINFO=/usr/share/terminfo 
fi 

# miniconda3环境变量
if [[ -f "/opt/miniconda" ]]; then
  export PATH="/opt/miniconda3/bin:$PATH"  # commented out by conda initialize
  export PATH="$PATH:~/.local/bin"

  # 解决clear在anconda环境下无法使用
  export TERMINFO=/usr/share/terminfo 
fi

# idea破解脚本
# export IDEA_VM_OPTIONS="/opt/JetBrains/jetbra/vmoptions/idea.vmoptions"

# export PATH="$PATH:~/.local/share/gem/ruby/3.0.0/bin"

# tldr清华源
#export TLDR_SOURCE="https://mirror.tuna.tsinghua.edu.cn/tldr-pages/tldr"
if command -v tldr &>/dev/null; then
  export TLDR_SOURCE_PATHS="~/.tldr_sources"
fi  

export TMPDIR=/tmp
