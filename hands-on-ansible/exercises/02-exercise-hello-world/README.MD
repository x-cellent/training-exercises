# Exercsie 2: Greet the World

1. Run the playbook `hello-world` from the project root. `ansible-playbook exercises/02-exercise-hello-world/hello-world.yaml -i inventory.yaml`
2. Move the greeting into the play `vars` and run it again.
3. In the folder you find a `greetings.yaml`. Include that in your play with `vars_files` and print the var `standard_greeting`.
4. Create the folders `group_vars/all` inside your exercise folder. Move the `greetings.yaml` there. The play should still work. (Hint: You may need to delete the old import.)
5. Now iterate over the list `greetings` and print them with `loop`.
6. After that we iterate over the dict `greetings_sorted`. Print a sentence which says the greeting and the language used. (Hint: use the filter `| dict2items` on the loop var)
7. In the end move the tasks of your playbook in a role called `greetings`. Include the role in your play and run it! (`roles/greetings/tasks/main.yaml`)
