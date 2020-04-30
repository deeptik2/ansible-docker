# Ansible Practice Machines and playbooks

### Aim: 
- Start 3 docker containers with Ubuntu
- ansible-machine = Ansible Host Machine
- remote-machine1 = To install a webserver
- remote-machine2 = To install a database


### Starting the containers:
- Go to root of the repo and run the below command

```
docker-compose -f docker-compose.yaml up --build
```

### Login to Ansible Host Machine:
- get container ID of `ansible-machine`: `docker ps`
- Login to ansible host machine: `docker exec -it <container-id> bash`
- Run inside container: `cd /etc/ansible`. This location should have playbooks `sample_playbook.yml`

### Ping Hosts
```
ansible all -m ping -i hosts
ansible webserver -m ping -i hosts
ansible database -m ping -i hosts
```

### Test AdHoc Command
```
ansible remote-machine1 -m command -a"whoami" -i hosts
```

### Run Sample Playbook
```
ansible-playbook sample_playbook.yml -i hosts
```

### Ansible Modules Link:
https://docs.ansible.com/ansible/latest/modules/modules_by_category.html



