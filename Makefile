.PHONY: dev clean converge_vagrant test_vagrant destroy_vagrant

venv/bin/activate:
	python3 -m venv venv
	. venv/bin/activate; pip install -r requirements.txt
	. venv/bin/activate; ansible-galaxy install -r requirements.yml

converge_vagrant: venv/bin/activate
	. venv/bin/activate; molecule converge -s vagrant

test_vagrant: venv/bin/activate
	. venv/bin/activate; molecule test -s vagrant

destroy_vagrant: venv/bin/activate
	. venv/bin/activate; molecule destroy -s vagrant

clean: venv/bin/activate
	. venv/bin/activate; molecule destroy -s vagrant
	rm -rf venv

login_vagrant: venv/bin/activate
	. venv/bin/activate; molecule login -s vagrant
