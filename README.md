Ansible Workstation
=======================

This is an ansible playbook to configure ubuntu (18.04 - 18.10) or Mac workstation (tested on mojave).
This playbook will install the following utilities:

  - awscli
  - conky
  - docker
  - kubectl
  - pinta
  - slack
  - terraform
  - vim


Requirements
-----------

#### Clone Repo

```
git clone
```

#### Install Ansible

```
sudo apt-get install -y git python3-pip (ubuntu only)
pip3 install ansible

```

#### (Mac Only) Install required galaxy playbooks:

```
ansible-galaxy install -r requirements.yml
```

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

Additional Configuration and Drivers
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
