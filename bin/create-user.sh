#!/usr/bin/env bash

DIR="$( pwd )/vendor/shopware/plugin-dev-tools"

USERID=$(id -u)
GROUP=$(id -g)

cat > $DIR/output/create-user.sh <<DELIM
#!/usr/bin/env bash

groupadd -g ${GROUP} app-shell
useradd -s /bin/bash -m -u ${USERID} -g ${GROUP} app-shell
chown -R app-shell:app-shell /home/app-shell
chown -R app-shell:app-shell /var/www/html
echo -e "app-shell\napp-shell\n" | passwd app-shell
echo 'app-shell  ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers
DELIM