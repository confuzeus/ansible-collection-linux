.PHONY: recreate destroy up play

play:
	@ansible-playbook playbook.yml

recreate: destroy up

destroy:
	@vagrant destroy -f

up:
	@vagrant up
