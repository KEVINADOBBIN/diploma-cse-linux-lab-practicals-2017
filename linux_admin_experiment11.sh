#!/bin/bash
# Experiment No-11: Linux System Administration
# SU (Super User) tasks, disk management, mounting, and user management

echo "=== 1. Change password for current user ==="
sudo passwd

echo "=== 2. Switch to root user ==="
su -

echo "=== 3. List all disk partitions ==="
fdisk -l

echo "=== 4. Check size of a specific partition (/dev/sda2) ==="
fdisk -s /dev/sda2

echo "=== 5. Interactive partition management (fdisk /dev/sda) ==="
fdisk /dev/sda <<EOF
p    # Print partition table
q    # Quit fdisk without saving changes
EOF

echo "=== 6. List currently mounted ext4 file systems ==="
mount -t ext4

echo "=== 7. Attempt to unmount all file systems ==="
umount -a || echo "Some mounts are busy. Use 'lsof' or 'fuser' to check."

echo "=== 8. View all mount points with df ==="
df -h

echo "=== 9. Estimate disk usage with du ==="
du -h --max-depth=1 /home/hea

echo "=== 10. Add a new user 'shiva' ==="
useradd shiva
echo "Setting password for new user 'shiva'..."
passwd shiva

echo "=== Experiment Completed ==="
