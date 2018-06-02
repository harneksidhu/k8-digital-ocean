# Ansible-Digital-Ocean

Sample code that showcases how to use Ansible to manage a Digital Ocean droplet.

## Prerequisites

Download and install the following software
[Vagrant](https://www.vagrantup.com/downloads.html)
[VirtualBox](https://www.virtualbox.org/wiki/Downloads)

Create an account on [Digital Ocean (Disclaimer: This is a referral code that provides you with a free $10 credit)](https://m.do.co/c/385c5ec4be11) and [create an api token](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-api-v2). 

## Getting Started
1. Edit the `group_vars/all.yml` file and replace `<Enter_API_Token>` with your Digital Ocean api token
2. Create a public `id_rsa.pub` and private `id_rsa` ssh key pair and place them under the `keys/` folder
3. Open a terminal and change the directory to where this repository is located.
4. Run `vagrant up` and wait till the machine has been provisioned.
5. Run `vagrant ssh` to acces the virtual machine. You will be logging in as user `vagrant` and the password is `vagrant`.
6. Once inside the machine, run `ansible-playbook setup.yml` to run the demo and `ansible-playbook destroy.yml` to destroy it.

## Resources
(Vagrant Commands)[https://www.vagrantup.com/docs/cli/]