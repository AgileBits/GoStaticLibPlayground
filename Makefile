all:
	echo "Building..."
	$(shell GOPATH=`pwd`; go build -buildmode=c-archive -o HelloGo/lib/libgo.a main)
	xcodebuild -project HelloGo/HelloGo.xcodeproj

	echo "Running..."
	PWD=$(shell pwd)
	$(PWD)/HelloGo/build/Release/HelloGo
