#!/bin/bash
# reset usb bus - find PCI ID with 
# lsusb -v -s1:1 | grep iSerial
# with 0000:00:14.0: 
# src https://unix.stackexchange.com/questions/681217/how-to-reset-bluetooth-that-stopped-working-on-a-linux-laptop-after-resuming-f


echo -n '0000:00:14.0' >| /sys/bus/pci/drivers/xhci_hcd/unbind && sleep 3 && echo -n '0000:00:14.0' >| /sys/bus/pci/drivers/xhci_hcd/bind
