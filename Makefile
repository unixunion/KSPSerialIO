XBUILD=/usr/local/bin/xbuild

all: KSPSerial.dll

KSPSerial.dll:
	$(XBUILD) /p:Configuration=Release

clean:
	$(XBUILD) /p:Configuration=Release /t:Clean
