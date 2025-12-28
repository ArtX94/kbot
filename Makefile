appVersion:

format:
	gofmt -s -w ./

build:
	go build -v -o kbot -ldflags "-X="github.com/artx94/kbot/cmd.appVersion=${appVersion}