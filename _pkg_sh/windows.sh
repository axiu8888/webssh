
# 打包前段代码
bash ./webfront.sh

echo "go curDir -> $PWD"
cd ../

CGO_ENABLED=0
GOOS=Windows
GOARCH=amd64
go build -o webssh.exe ./main.go
#GOOS=Windows GOARCH=amd64 go build -o webssh.exe ./main.go
