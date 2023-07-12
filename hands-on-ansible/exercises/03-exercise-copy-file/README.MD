# Copy Files

1. First we create a new folder in the `tmp` folder. Try to put the name of the new folder in a variable. Use the [file module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/file_module.html).
2. Create a `files` folder in the role folder. In this folder create a file and write `Hallo Welt` or an other string in the file. Copy this file in the newly created folder from the first task with the [copy module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html).
3. Read the file on the server and print the output. Change the text in the file and run the playbook again. You can use the [slurp module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/slurp_module.html).
