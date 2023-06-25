Ansible Workstation
=======================

This is an ansible playbook to install development tools on
ubuntu (20.04, 22.04) or Macos workstation (amd64 or arm64).
Check the site.yml for list of roles it will install, examples:

  - [bash_it](https://github.com/Bash-it/bash-it)
  - [sdkman](https://sdkman.io/)
  - terminal # install iterm2(macos) or qterminal(ubuntu)
  - podman
  - kubectl
  - slack
  - [tfenv](https://github.com/tfutils/tfenv) # terraform version manager
  - vim plugins

Requirements
-----------

#### Install Ansible

```
sudo apt-get install -y git python3-pip (ubuntu only)
pip3 install ansible
```

#### Clone Repo

```
git clone
```

#### (Mac Only) Install Brew:

Install brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
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

Additional Configuration and Drivers (TODO)
------------------------------------

D3100 Docking station

https://www.displaylink.com/downloads/ubuntu

=======
Post Setup
----------

 * Setup Bash-IT `~/.bash_it/install.sh`
 * Login to Megasync


License
-------

MIT / BSD
