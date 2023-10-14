# echo '5408' | sudo -S ln -s /mnt/wslg/.X11-unix /tmp/.X11-unix &> /dev/null
export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"

# miniconda3环境变量
# export PATH="/opt/miniconda3/bin:$PATH"  # commented out by conda initialize

# idea破解脚本
# export IDEA_VM_OPTIONS="/opt/JetBrains/jetbra/vmoptions/idea.vmoptions"

# export PATH="$PATH:/home/lingguang/.local/share/gem/ruby/3.0.0/bin"

# tldr清华源
#export TLDR_SOURCE="https://mirror.tuna.tsinghua.edu.cn/tldr-pages/tldr"
export TLDR_SOURCE_PATHS="~/.tldr_sources"

# 解决clear在anconda环境下无法使用
export TERMINFO=/usr/share/terminfo

export TMPDIR=/tmp