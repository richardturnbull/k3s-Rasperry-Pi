#!/bin/bash

vagrant up

docker run \
-v "$(PWD)":/work \
-v ~/.vagrant.d:/root/.vagrant.d:ro \
--rm \
richardturnbull/docker-ansible ansible-playbook -i inventory.vagrant main.yml
