Ansible Ubuntu Workstation
=======================

This is an ansible playbook to configure an ubuntu 14.04 workstation.
This playbook will install the following utilities:

  - awscli                                                            
  - chrome                                                            
  - conky                                                             
  - docker                                                            
  - kubectl                                                           
  - pinta                                                             
  - nodejs                                                            
  - slack                                                             
  - terraform                                                         
  - terragrunt                                                        
  - virtualbox                                                        
  - vim                                                               

It also installs several ubuntu packages including xubuntu-desktop

It removes some packages like libreoffice and games

Requirements
-----------

    * git,
    * ansible

Clone Repo
----------

```
git clone 
```

Install Ansible
---------------

```
cd ansible-ubuntu

./ansible_install.sh
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
    - chrome
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
$ ansible-playbook -i hosts site.yml -c local
```

License
-------

MIT / BSD
