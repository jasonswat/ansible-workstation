Ansible Workstation
=======================

![workflow](https://github.com/jasonswat/ansible-workstation/actions/workflows/build.yml/badge.svg?branch=main)


This is an ansible playbook to install development tools on
ubuntu (20.04, 22.04, 24.04) or Macos workstation (amd64 or arm64).
Check the site.yml for list of roles it will install, examples:

  - [bash_it](https://github.com/Bash-it/bash-it) - Shell aliases and Terminal hacks
  - [sdkman](https://sdkman.io/) - Version manager for Java, Kotlin, Gradle, and many other java tools
  - [kitty terminal](https://sw.kovidgoyal.net/kitty) - Terminal for mac and linux
  - podman/Docker
  - kubectl
  - slack
  - [tfenv](https://github.com/tfutils/tfenv) - Terraform version manager
  - vim plugins
  - golang
  - nodejs
  - megasync - Cloud storage for to store keepass
  - displaylink drivers 

Requirements
-----------

#### Install Ansible

```
sudo apt-get install -y git python3-pip # ubuntu only
pip3 install ansible
```

#### Clone Repo

```
git clone https://github.com/jasonswat/ansible-workstation.git
```

Default installation
--------------------

Test the playbook by running in "check" mode

```
$ ansible-playbook --ask-become-pass --check -i hosts site.yml -c local
```

Run the Playbook

```
$ ansible-playbook --ask-become-pass -i hosts site.yml -c local
```

Run the Playbook on specific roles:

```
$ ansible-playbook --ask-become-pass -i hosts site.yml -c local --tags "sdkman,tfenv"
```

Or use the Makefile:

```
make ansible/role role=conky
```

=======
Post Setup
----------

 * Setup Bash-IT `~/.bash_it/install.sh`
 * Login to Megasync


License
-------

MIT / BSD
