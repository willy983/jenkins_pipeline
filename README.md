# jenkins_pipeline
## branch install_ignite
Рабочая директория `jenkins_pipeline/ansible`

Установка `ansible-playbook -i hosts/ --vault-password-file=roles/install_ignite/vars/vault_pass_file  server.yml`

Переменные `roles/install_ignite/vars/main.yml`

Файл с данными для авторизации в https://nexus.sbt-ignite-dev.ru 
`roles/install_ignite/vars/vars.yml`

Запуск серверов: `ansible all -i hosts/ -m shell -a "sh /ignite/sas/server/run-server.sh" -f6`

Запуск клиентов: `ansible all -i hosts/ -m shell -a "sh /ignite/sas/client/run-client.sh" -f6`