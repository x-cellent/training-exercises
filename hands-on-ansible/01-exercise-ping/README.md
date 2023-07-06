# Exercise 1: ping a host via ansible

Ping a host using ansible, in the process we can verify that:
1. The remote host is reachable via the network
2. The remote host is running
3. We have the necessary permissions to login to the remote host
4. python is installed on the remote host

## Hints
- you can use this module: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/ping_module.html
- it may be interesting to see some more information about the ping, you can use the debug module: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/debug_module.html
- try pinging one host, then multiple hosts
