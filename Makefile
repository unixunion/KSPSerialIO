XBUILD=/usr/local/bin/xbuild

all: KSPSerial.dll

KSPSerial.dll:
	$(XBUILD) /p:Configuration=Debug

clean:
	$(XBUILD) /p:Configuration=Debug /t:Clean
