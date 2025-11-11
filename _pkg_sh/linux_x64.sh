
# 打包前段代码
bash ./webfront.sh

echo "go curDir -> $PWD"
cd ../

#CGO_ENABLED=0
#GOOS=linux
#GOARCH=amd64

GOOS=linux GOARCH=amd64 go build -o webssh_x64 ./main.go
