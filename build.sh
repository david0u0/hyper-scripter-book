#/usr/bin/env bash

set -e

if [ "$#" != "1" ]; then
    echo 輸入 hyper-scripter 位置！
    exit 1
fi

cd $(dirname $0)
cp $1/completion/* src/completion -R

mdbook build
