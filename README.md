README

There's a single defconfig here at the moment: `qemu-mips32elr2-jsc`. This is based on upstream `qemu-mips32elr2`.

To build the toolchain for this defconfig do:

```
$ mkdir mips32elr2-jsc
$ cd mips32elr2-jsc
$ make O=$PWD -C <path to buildroot> BR2_EXTERNAL=<path to this repo> qemu-mips32elr2-jsc_defconfig
$ make toolchain
```
