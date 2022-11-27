ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc
date
passwd
useradd -m -G users -G wheel tux
passwd tux
rm -rf /etc/sudoers
cp sudoers /etc
grub-install
rm -rf /etc/default/grub
cp grub /etc/default
grub-mkconfig -o /boot/grub/grub.cfg
mkinitcpio -P linux-zen
locale-gen
rm -rf /etc/locale.gen
cp locale.gen /etc
cp locale.conf /etc
rm -rf /etc/hostname
rm -rf /etc/hosts
cp hostname /etc
cp hosts /etc
systemctl enable NetworkManager
systemctl enable sddm
exit
