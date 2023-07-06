# Exercise 7: change the Message of the day on a host

Update the MODT when logging in on all hosts to the following:

```
This Machine is administered by ansible.
Diese Maschine wird von ansible administriert.

OS: $OS_VERSION
Kernel: $KERNEL_VERSION
Hostname: $HOSTNAME

I'm watching you, Bob
```

Keep in mind we have multiple Operating Systems in our fleet, most of them are Debian based, but we need an exception for RedHat based systems.

Make sure to create a backup of the old message.

## Hints
- you can use the https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html module
- the MOTD on ubuntu based systems is stored in `/etc/motd`
- you can use the `ansible_os_family` variable to check for the current OS
- for an overview of all availible variables (facts) you can run e.g. `ansible zeus -m setup -i ansible/inventory.yaml`

## Verification
Login to two machines like:
- Ubuntu: `ssh ansibleman@172.16.100.2`
- Rocky: `ssh ansibleman@172.16.100.7`
