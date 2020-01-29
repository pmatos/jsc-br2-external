README

There's a single defconfig here at the moment: `qemu-mips32elr2-jsc`. This is based on upstream `qemu-mips32elr2`.

To build the toolchain for this defconfig do:

``` shell
$ mkdir mips32elr2-jsc
$ cd mips32elr2-jsc
$ make O=$PWD -C <path to buildroot> BR2_EXTERNAL=<path to this repo> qemu-mips32elr2-jsc_defconfig
$ make toolchain
```

To build a full image run `make all` instead of `make toolchain` as the last command.

Once it's complete, try out the new image using qemu with:

``` shell
$ host/bin/qemu-system-mipsel -M malta -m 2G -kernel images/vmlinux -hda images/rootfs.ext2 -append "nokaslr root=/dev/hda" -nographic -net nic -net user,hostfwd=tcp::6022-:22
```

This will take you all the way to the login prompt after which you just need to enter `root` as the username and press enter to login (since there's no password setup). If you want a user without super-powers, use `jsc` (also without password). You can also `ssh` into the machine using:

``` shell
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p 6022 jsc@localhost
```

