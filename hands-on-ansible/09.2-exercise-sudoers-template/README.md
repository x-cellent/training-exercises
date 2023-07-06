# Exercise 9.2: Templating a file

We got a file from internal IT which people are allowed to use apt on our servers.

- They provided us with a user list: 
- and a template how the permission file should look

## Hints
- the file should be rendered in the `/etc/sudoers.d/` folder
- the filename sould be `allow_apt_$USERNAME`

## Verify
