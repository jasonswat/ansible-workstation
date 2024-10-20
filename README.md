# Ansible Workstation
=======================

Tested on github actions [public runners](https://docs.github.com/en/actions/using-github-hosted-runners/using-github-hosted-runners/about-github-hosted-runners#standard-github-hosted-runners-for-public-repositories)

![workflow](https://github.com/jasonswat/ansible-workstation/actions/workflows/build.yml/badge.svg?branch=main)


This is an ansible playbook to install development tools on
ubuntu (20.04, 22.04, 24.04) or Macos workstation (amd64 or arm64).
Check the site.yml for list of roles it will install, examples:

  - Apt and Brew packages, see [list of packages](https://github.com/jasonswat/ansible-workstation/blob/master/roles/common/defaults/main.yml)
  - [bash_it](https://github.com/Bash-it/bash-it) - Shell aliases and Terminal hacks
  - [sdkman](https://sdkman.io/) - Version manager for Java, Kotlin, Gradle, and many other java tools
  - [kitty terminal](https://sw.kovidgoyal.net/kitty) - Terminal for mac and linux
  - container tools - podman/Docker
  - [keepass](https://keepass.info/index.html)
  - [slack](https://slack.com/)
  - [tfenv](https://github.com/tfutils/tfenv) - Terraform version manager
  - [vim plugins](https://github.com/jasonswat/ansible-workstation/blob/dev/roles/vim_plugins/defaults/main.yml)
  - python - [miniconda](https://docs.anaconda.com/miniconda/) python environment manager
  - golang
  - nodejs
  - megasync - Cloud storage for to store keepass
  - displaylink drivers 

Requirements
-----------

#### Install Ansible

This is the version of ansible tested in github actions 

```
sudo apt-get install -y git python3-pip # ubuntu only, pip is not installed by default
pip3 install ansible=='10.5.0'
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
make ansible/role role=sdkman,tfenv
```


#### Post Setup
------------

 * Setup Bash-IT `~/.bash_it/install.sh`
 * Login to Megasync
 * Jetbrains toolbox license and choose which IDE's to install 


License
-------

MIT / BSD
