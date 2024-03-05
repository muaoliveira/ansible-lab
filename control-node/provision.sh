#/bin/sh
sudo apt update
echo "Iniciando instalação do Ansible"
sudo apt install ansible
echo "Finalizando instalação do Ansible"
cat <<EOT >> /etc/ansible/hosts
[servers]
control-node ansible-host=192.168.1.2
app01 ansible-host=192.168.1.3
db01 ansible-host=192.168.1.4

[all:vars]
ansible_python_interpreter=/usr/bin/python3
EOT