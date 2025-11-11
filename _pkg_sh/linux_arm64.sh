
# 打包前段代码
bash ./webfront.sh

echo "go curDir -> $PWD"
cd ../

#CGO_ENABLED=0
#GOOS=linux
#GOARCH=arm64

GOOS=linux GOARCH=arm64 go build -o webssh_arm64 ./main.go
