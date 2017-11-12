# AoSC Driver Simple I2S Hifiberry and ICS43432 MEMS

> Use Hifiberry-dac / Adafruit Speaker Bonnet and ICS43432 / SPH0645 I2S MEMS Mic simultaneously

Tested with:
 - [Adafruit I2S MEMS Microphone Breakout](https://www.adafruit.com/product/3421)
 - [Adafruit I2S 3W Stereo Speaker Bonnet for Raspberry Pi](https://www.adafruit.com/product/3346)

Based on googlevoicehat-{codec,soundcard}.c by Peter Malkin.

## Install

This was installed successfully on Linux 4.9.35+ on a Raspberry Pi Zero W

```sh
sudo apt-get install raspberrypi-kernel-headers

git clone https://github.com/GothAck/hifimems-kmod
cd hifimems-kmod

make KERNEL_SRC=/lib/modules/$(uname -r)/build all
sudo make KERNEL_SRC=/lib/modules/$(uname -r)/build modules_install
```
