#!/bin/bash

qemu-system-x86_64 \
	-d int \
	-pflash OVMF.fd \
	-drive file=fat:rw:sysroot/,format=raw \
	-nographic \
	-no-shutdown \
	-no-reboot \
 	-enable-kvm -cpu host \

