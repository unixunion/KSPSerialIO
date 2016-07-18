XBUILD=/usr/local/bin/xbuild
CONFIG=Release

KSPDIR=/Users/peter/Library/Application\ Support/Steam/steamapps/common/Kerbal\ Space\ Program
INSTALLDIR=$(KSPDIR)/GameData/KSPSerialIO
CONFIGDIR=$(INSTALLDIR)/PluginData/KSPSerialIO

all: KSPSerial.dll

KSPSerial.dll:
	$(XBUILD) /p:Configuration=$(CONFIG)

install:
	cp KSPSerialIO/bin/$(CONFIG)/KSPSerialIO.dll $(INSTALLDIR)
	cp KSPSerialIO/bin/$(CONFIG)/PsimaxSerial.dll $(INSTALLDIR)
	cp config.xml $(CONFIGDIR)
clean:
	$(XBUILD) /p:Configuration=$(CONFIG) /t:Clean
