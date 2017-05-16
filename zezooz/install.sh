if [ ! -f install ]; then
    echo '安装脚本必须在项目根目录中运行'
    exit 1
fi

CURDIR=$(pwd)

#获取系统设置的 GOPATH
OLDGOPATH="$GOPATH"

#将GOPATH设置为当前项目
export GOPATH=$CURDIR

echo $GOPATH

#以下为特定项目编译需要运行的命令
gofmt -w src
go install app
#以上为特定项目命令
#还原系统GOPATH变量值
export GOPATH="$OLDGOPATH"
echo '编译完成'
