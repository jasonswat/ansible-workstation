Ansible Workstation
=======================

This is an ansible playbook to configure an ubuntu 18.10 workstation.
This playbook will install the following utilities:

  - awscli                                                            
  - conky                                                             
  - docker                                                            
  - kubectl                                                           
  - pinta                                                             
  - nodejs                                                            
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
sudo apt-get install -y git python3-pip
sudo -H pip3 install ansible

```

#### Install required galaxy playbooks:

```
ansible-galaxy install -r requirements.yml
```

Customize
-------------------

You may not want to run all the roles in this playbook.
You can choose which you want to run by updating the 
site.yml file and commenting out the roles you don't want to run

for example:

```
  roles:
    - awscli
    - common       # common packages
    - chrome     # chrome canary (develeoper version)
    - conky
    - desktop
#    - docker
    - kubectl 
#    - pinta 
    - nodejs
    - shell
    - nover.ohmyzsh
#    - slack
#    - terraform 
```

Default installation
--------------------

Run the Playbook

```
$ ansible-playbook --ask-become-pass -i hosts site.yml -c local
```

License
-------

MIT / BSD
