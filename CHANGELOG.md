# Changelog

* **0.18.2.2**: 20160809
  I'm still getting the hang of making the new serial handling code work
  properly, sorry. This release is a minor change to the serial port
  initialisation and teardown, ensuring the port is created properly every
  time the flight scene loads, and is torn down properly without memory leaks
  when the flight scene exits. This should make it more stable across
  multiple scene changes.
* **0.18.2.1**: 20160721
  * Move inbound packet processing out of worker back in to main thread.
  * Serial worker thread uses while loop instead of nested calls,
    fixing segfaults on Linux.
* **0.18.2**: 20160719
  * Initial port of upstream 0.18.2.
  * Replace original serialport library with PsiMaxSerial.
  * Replace serial event listener with threaded Stream BeginRead/EndRead loop.
