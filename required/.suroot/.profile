# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

isroot()
{
	if [ "$(id -u)" == "0"  ]; then
		[ "$1" != "q" ] && echo 1
	else
		[ "$1" != "q" ] && echo 0
	fi
}

if [ isroot = 1 ]
then
  # set PATH so it includes user's private bin if it exists
  [ -d "$HOME/../bin" ] && PATH="$HOME/../bin:$PATH"
else
  # set PATH so it includes user's private bin if it exists
  [ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
fi


# EOF
