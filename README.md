UpLoadMyIp
==========


Purpose
---------
To make raspberry pi always accessable from ssh (I have no monitor),

so I made this little script to push pi's IP address onto Github.


Install
--------
Need ruby env to be installed

Arch user can install directly from official repo
```
$ pacman -S ruby
```

Config
--------
I am using zsh shell, so you should config ~/.zprofile file
```
$ vim ~/.zprofile
```
add a line

```zsh
uploadmyip/upload.rb
```
At the mean time you should set arch auto login in 

```zsh
$ mkdir /etc/systemd/system/getty@tty1.service.d

$ cd /etc/systemd/system/getty@tty1.service.d

$ vim /etc/systemd/system/getty@tty1.service.d/autologin.conf
```
put line blow in it

```
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin <username> --noclear %I 38400 linux
```

Also, set auto connect to wifi if necessary

```zsh
$ wifi-menu -o
```
This will create a netctl config file on /etc/netctl

And use
```zsh
$ netctl enable <profilename>

```
you will connect to wifi automatically

Enjoy
------
Now, every time you start your pi, you can locate it's address

