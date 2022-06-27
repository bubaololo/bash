#!/bin/bash
domains=(example1.com example2.com)
cd
for domain in ${domains[*]}
do
mkdir /var/www/$domain
done
echo "Domain folders created"
cd /etc/apache2/sites-available
for domain in ${domains[*]}
do
echo "<VirtualHost *:80>
ServerAdmin bubaololo@gmail.com
ServerName ${domain}
ServerAlias www.${domain}
DocumentRoot /var/www/${domain}
ErrorLog /var/log/apache2/error.log
CustomLog /var/log/apache2/access.log combined
</VirtualHost>" > $domain'.conf'
echo "${domain} apache config created"
done
echo "All configs created"
for domain in ${domains[*]}
do
a2ensite $domain
done
systemctl reload apache2
