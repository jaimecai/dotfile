#!/bin/bash
#此行称为 shebang（就是 sharp (#) + bang (!) 的意思），会指引操作系统使用接下来指定的程序运行此文件。此处 /bin/bash 执行我们的文件。

yum install vim
#设置install.sh的目录的全局环境变量 让脚本可以在任意地方运行
export DOTFILES_DIR
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# Bunch of symlinks
#创建.vimrc的符号链接（类似windows快捷方式）到家目录
ln -sfv $DOTFILES_DIR/vim/.vimrc ~
ln -sfv $DOTFILES_DIR/git/.gitconfig ~
