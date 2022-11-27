lsblk
fdisk /dev/sda
mkfs.fat -F32 /dev/sda1
mkfs.ext4 -L arch /dev/sda2
mount /dev/sda2 /mnt
mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi
pacstrap -i /mnt base base-devel linux-zen linux-zen-headers linux-firmware amd-ucode sudo nano git htop grub efibootmgr os-prober networkmanager nvidia-dkms plasma ark dolphin konsole sddm
genfstab -pU /mnt >> /mnt/etc/fstab
cp alfi2.sh /mnt/bin
cp hostname /mnt
cp grub /mnt
cp hosts /mnt
cp locale.conf /mnt
cp sudoers /mnt
chmod +x /mnt/bin/alfi2.sh
arch-chroot /mnt /bin/alfi2.sh
