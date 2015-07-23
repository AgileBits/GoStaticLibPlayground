all:
	echo "Building..."
	PWD=`pwd`
	export GOPATH=$(PWD)
	go build -buildmode=c-archive -o HelloGo/lib/libgo.a main
	xcodebuild -project HelloGo/HelloGo.xcodeproj
	echo "Running..."
	$(PWD)/HelloGo/build/Release/HelloGo
