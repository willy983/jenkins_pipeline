# jenkins_pipeline
## branch install_ignite
Рабочая директория для установки `jenkins_pipeline/ansible`

Установка `ansible-playbook -i hosts/ --vault-password-file=roles/install_ignite/vars/vault_pass_file  server.yml`

Установка с очисткой рабочей директории`ansible-playbook -i hosts/ --vault-password-file=roles/install_ignite/vars/vault_pass_file -e "force=true"  server.yml`

На нодах: /ignite/sas
- distr - содержит дистрибутив ignite
- config - серверный и клиентский конфиг
- server - рабочая директория серверного узла(логи пока тоже здесь)
- client - рабочая директория клиентского(логи пока тоже здесь)

Переменные `roles/install_ignite/vars/main.yml`

Файл с данными для авторизации в https://nexus.sbt-ignite-dev.ru 
`roles/install_ignite/vars/vars.yml`

Запуск серверов: `ansible-playbook -i hosts/  -e "server_setup_action=start_servers" server.yml`

Запуск клиентов: `ansible-playbook -i hosts/  -e "server_setup_action=start_clients" server.yml`

Kill ignite: `ansible-playbook -i hosts/  -e "server_setup_action=kill_ignite" server.yml`
