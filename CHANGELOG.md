# Changelog

* **0.18.2.1**: 20160721
  * Move inbound packet processing out of worker back in to main thread.
  * Serial worker thread uses while loop instead of nested calls,
    fixing segfaults on Linux.
* **0.18.2**: 20160719
  * Initial port of upstream 0.18.2.
  * Replace original serialport library with PsiMaxSerial.
  * Replace serial event listener with threaded Stream BeginRead/EndRead loop.
