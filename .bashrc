# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
alias up='doas eix-sync; doas emerge -uDU @world'
alias ki='doas make -j13; doas make modules_install; doas make install; doas grub-mkconfig -o /boot/grub/grub.cfg'
alias pk='doas vim /etc/portage/package.use/package.use'
alias cl='cd /var/cache/distfiles; doas rm *; doas eclean-kernel -n 1;'
alias in='doas emerge'
alias re='doas emerge --deselect'
