# Copy Templates

1. Create a `templates` folder in your role.
2. In this folder create the `hat.j2` and fill it with the string `My hat has the color {{ hat_color }}.`
3. Use the [template module](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/template_module.html) to copy the file on the server. Set the var `hat_color` as a var in the task directly.
4. Either slurp the file and print the output or look at it on the server.
5. Create a new file called `countdown.j2` in the templates `folder`.
6. In the file create a for loop, which writes a countdown from `10` to `0` in the file.
7. Add an `if-else`clause to add `...` after each number. When the number is `0` wirte `Start!`.
