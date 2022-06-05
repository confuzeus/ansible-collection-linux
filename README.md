# Ansible Collection - confuzeus.linux

Everything you need to manage Linux systems for your small business.

## Roles

Roles deal with specific features you might need for your Linux machines.

### bootstrap

The bootstrap role is used to prepare a minimal Linux install for production.

It currently does the following:

1. Set the system hostname.
2. Set the system timezone.
3. Install packages.
4. Install Docker from upstream repositories.

The role has been tested with the following distributions:

1. Debian 11 (bullseye).
2. Rocky Linux 8.

#### tags

Use tags to control which features to enable.

##### docker

Run tasks related to *docker*.

#### Variables

##### system_hostname (String)

This string will be used as the system's hostname.

*Default:* myserver

##### system_hwclock (String)

Set the hardware clock to this string.

*Default:* UTC

##### system_timezone_name (String)

Set the system's timezone to this region.

*Default:* Indian/Mauritius

##### system_packages (List)

A list of packages to install.

*Default:*: ['tmux', 'git']

##### docker_apt_keyring_path (String)

Path where the keyring from upstream should be saved.

*Default:* /etc/apt/trusted.gpg.d/docker.gpg