#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# 本脚本旨在快速测试新编译的二进制程序，但是又使用宿主机配置，不污染在用的数据库。
set -e

# 路径准备
OldPath=$(pwd)
# SCRIPT_PATH=$(realpath "${BASH_SOURCE[0]}")
SCRIPT_PATH=$(realpath "$0")
ProjectPath="$(dirname "$SCRIPT_PATH")"

"$ProjectPath/release/gorss.amd64" -config ~/.local/share/gorss/gorss.conf

cd "$OldPath"