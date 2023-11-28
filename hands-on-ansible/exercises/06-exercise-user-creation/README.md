# Exercise 6: create a user on a remote machine

Create a user with the following information:

- Name: bob
- His preferred shell is bash
- make sure he gets a home folder
- his password should be the name of his wife, barbara
- he needs access to the hosts, zeus and hades

Leave a message for bob in the form of a text file in his home directory. Make sure he has the permissions to read the file.

## Hints

- you can use this module: https://docs.ansible.com/ansible/latest/collections/ansible/builtin/user_module.html
- to hash the password you can use the following snippet: "{{ 'mypassword' | password_hash('sha512', 'mysecretsalt') }}"
- you can use the https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html module to put the message text file into bobs home dir

## Verification

Try logging in via `ssh bob@zeus`
