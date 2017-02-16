build:
	docker build -t ansible-playbook .
run:
	docker run --name ansible -it -v ${PWD}/../ansible:/ansible/playbooks ansible-playbook /bin/bash
