obj-m += hifimems-soundcard.o hifimems-codec.o
SRC := $(shell pwd)

all: devicetree
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules

modules_install: devicetree
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
	cp hifimems-soundcard.dtbo /boot/overlays/

clean: clean-local
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) clean

clean-local:
	rm hifimems-soundcard.dtbo || true

hifimems-soundcard.dtbo:
	dtc -@ -I dts -O dtb -o hifimems-soundcard.dtbo hifimems-soundcard-overlay.dts

devicetree: hifimems-soundcard.dtbo
