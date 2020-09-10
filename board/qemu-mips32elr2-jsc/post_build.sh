#! /bin/sh
# Allow users to ssh without password
echo 'PermitEmptyPasswords yes' >> $1/etc/ssh/sshd_config

# Allow jsc user to halt
SUDOERS=$1/etc/sudoers
chmod +w ${SUDOERS}
echo 'jsc ALL=NOPASSWD: /sbin/halt, /sbin/reboot, /sbin/poweroff, /bin/su' >> ${SUDOERS}
chmod -w ${SUDOERS}

