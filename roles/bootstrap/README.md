# bootstrap

The bootstrap role is used to prepare a minimal Linux install for production.

It currently does the following:

1. Set the system hostname.
2. Set the system timezone.
3. Install packages.
4. Install Docker from upstream repositories.
5. Setup users.

The role has been tested with the following distributions:

1. Debian 11 (bullseye).
2. Rocky Linux 8.

## tags

Use tags to control which features to enable.

### docker

Run tasks related to *docker*.

### Variables

#### system_hostname (String)

This string will be used as the system's hostname.

*Default:* myserver

#### system_hwclock (String)

Set the hardware clock to this string.

*Default:* UTC

#### system_timezone_name (String)

Set the system's timezone to this region.

*Default:* Indian/Mauritius

#### system_packages (List)

A list of packages to install.

*Default:*: ['tmux', 'git']

#### docker_apt_keyring_path (String)

Path where the keyring from upstream should be saved.

*Default:* /etc/apt/trusted.gpg.d/docker.gpg

#### root_password_hash (String)

The hashed password for the *root* user.

Use a tool like *mkpasswd* to hash passwords.

#### os_groups (List[Map])

A list of group maps to create.

The map needs to contain a single key called *name* that maps to a string
containing the group name.

*Default:* [{'name': 'sshusers'}]

#### os_users (List[Map])

A list of user maps.

The map needs to contain the following keys:

- name
- password_hash
- groups
- shell

*name* is the user's username.

*password_hash* is the same as *root_password_hash* as above.

*groups* is a list of groups that the user should be part of.

*shell* is the full path to the user's default shell.