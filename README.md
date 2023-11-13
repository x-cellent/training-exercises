# Training Exercises

Public exercises from our Hands on Docker and Hands on Ansible trainings.

## Hands on Docker

To run `docker commands` you have to ssh into the `docker vm`.

```bash
ssh ubuntu@docker
```

Now you can run `docker` and `docker-compose` commands.

```bash
docker version
docker compose version
docker run hello-world
```

Since you are working on another host when running docker commands you can not use the files directly from editor.
To have the same files like in your editor run the `rsync commonand` from the workspace host.

```bash
rsync -r /home/coder/workspace/hands-on-docker ubuntu@docker:/home/ubuntu
```

## Hands on Ansible

To use `ansible` you can stay on the standard host.  
Always check in which direcotry you are.

```bash
$ pwd
/home/coder/workspace/hands-on-ansible
```

Remeber to always specify the `inventory` with `-i inventory.ymal` and the correct path to the `playbook` when running an ansible command.

```bash
ansible-playbook -i inventory.yaml exercises/01-solution-ping/ping.yaml
```
