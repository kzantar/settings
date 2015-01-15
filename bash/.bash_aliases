alias sshadd='eval "$(ssh-agent -s)"; ssh-add /home/kzantar/.ssh/kzantar_rsa'
alias cdproject="cd ~/project/irk"
alias sshvagrant="cd ~/project; vagrant ssh"
alias ftpvltava="curlftpfs ftp://argon.gohost.ru/www/vltava-online.ru/ ~/mnt/vltava"
alias manage='cdproject; ./env/bin/python manage.py'
alias shell='manage shell'
alias sqlshell='manage debugsqlshell'
alias runserver='manage runserver --noreload'
alias runtest='manage test --logging-level=ERROR'
alias migrate='manage migrate --ignore-ghost-migrations'
alias schema='manage schemamigration'
alias elastic='manage elasticsearch_rebuild --rotate'
alias activate='cdproject; source env/bin/activate'
alias clean_branches='git branch --merged | grep -v master | xargs git branch -d'
