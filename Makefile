all:
	echo "Building..."
	$(shell GOPATH=`pwd`; go build -buildmode=c-archive -o HelloGo/lib/libgo.a main)
	xcodebuild -project HelloGo/HelloGo.xcodeproj

	echo "Running..."
	PWD=$(shell pwd)
	$(PWD)/HelloGo/build/Release/HelloGo


win32:
	echo "Building Win32 library..."
	$(shell GOOS=windows GOARCH=386 GOPATH=`pwd`; go build -buildmode=c-archive -o HelloWin32/lib/libgo.lib main)

win64:
	echo "Building Win64 library..."
	$(shell GOOS=windows GOARCH=amd64 GOPATH=`pwd`; go build -buildmode=c-archive -o HelloWin64/lib/libgo.lib main)

android:
	echo "Building Android library..."
	$(shell GOOS=android GOARCH=arm GOPATH=`pwd`; go build -buildmode=c-archive -o HelloAndroid/lib/libgo.a main)
