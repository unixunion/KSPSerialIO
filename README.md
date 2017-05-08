# KSPSerialIO-cross

This is a fork of the [KSPSerialIO](http://forum.kerbalspaceprogram.com/index.php?/topic/60281-hardware-plugin-arduino-based-physical-display-serial-port-io-tutorial-22-april/)
plugin for Kerbal Space Program. KSPSerialIO provides a serial interface for
KSP. This fork of the plugin replaces the underlying serial library and
provides support for Linux and Mac OS.

## Usage

This version is compatible with version 0.18.7 of zitronen's KSPSerialIO, and
their `KSPIODemo16` example sketch. Refer to the forum thread for current
packet format and the demo code.

## How does it differ from zitronen's fork?

This fork replaces the old serial library with [PsiMax Serial library](https://github.com/unixunion/PsimaxSerial).

## How does it differ from Mulbin's cross platform KSPSerialIO?

The original plugin fails because the Mono runtime in KSP doesn't call the
`DataReceived` callback. Mulbin's [KSPSerialIO fork](https://github.com/unixunion/KSPSerialIO)
works around this by polling the serial port for data in the Unity
`Update` event.

This fork replaces that mechanism with an asynchronous serial reader running
in a separate thread. It should be more reliable and less laggy.

## What doesn't work?

* This plugin doesn't (yet) function on Windows 10. Previous Windows
  releases are untested.
* Automatic port detection. You'll need to explicitly set a serial port
  in the `config.xml`.

## What does work?

* Everything else, as far as I'm aware.

## To do

* Check if the port is open before trying to start reading, instead of just catching the exception. The delay in the exception handler is at least part of the reason this isn't working on Windows 10.
* Clean up the stream handler and thread in OnDestroy, to make sure we're not leaving uncollected garbage lying around.

## License

Like the original plugin, this code is licensed under [CC-BY](https://creativecommons.org/licenses/by/4.0/).
