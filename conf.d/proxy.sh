#!/bin/bash
echo "# PORTAS DE ACESSO NO SQUID" > /etc/squid/squid.conf
echo "http_port 7070" >> /etc/squid/squid.conf
echo "" >> /etc/squid/squid.conf
echo "" >> /etc/squid/squid.conf
echo "# NOME DO SERVIDOR" >> /etc/squid/squid.conf
echo "visible_hostname JoeLinux" >> /etc/squid/squid.conf
echo "" >> /etc/squid/squid.conf
echo "" >> /etc/squid/squid.conf
echo "# ACL DE CONEXAO" >> /etc/squid/squid.conf
echo "acl accept src $ip" >> /etc/squid/squid.conf
echo "acl ip url_regex -i $ip" >> /etc/squid/squid.conf
echo "" >> /etc/squid/squid.conf
echo "" >> /etc/squid/squid.conf
echo "# CACHE DO SQUID" >> /etc/squid/squid.conf
echo "cache_mem 200 MB" >> /etc/squid/squid.conf
echo "maximum_object_size_in_memory 32 KB" >> /etc/squid/squid.conf
echo "maximum_object_size 1024 MB" >> /etc/squid/squid.conf
echo "minimum_object_size 0 KB" >> /etc/squid/squid.conf
echo "cache_swap_low 90" >> /etc/squid/squid.conf
echo "cache_swap_high 95" >> /etc/squid/squid.conf
echo "cache_dir ufs /var/spool/squid 100 16 256" >> /etc/squid/squid.conf
echo "access_log /var/log/squid/access.log squid" >> /etc/squid/squid.conf
echo "" >> /etc/squid/squid.conf
echo "" >> /etc/squid/squid.conf
echo "# ACESSOS ACL" >> /etc/squid/squid.conf
echo "http_access allow all" >> /etc/squid/squid.conf
echo "http_access allow all" >> /etc/squid/squid.conf
echo "http_access deny all" >> /etc/squid/squid.conf
echo "cache deny all" >> /etc/squid/squid.conf

echo "NO_START=0" >> /etc/default/dropbear
echo "DROPBEAR_PORT=9090" >> /etc/default/dropbear
echo "DROPBEAR_EXTRA_ARGS=" >> /etc/default/dropbear
echo "DROPBEAR_BANNER=""" >> /etc/default/dropbear
echo "DROPBEAR_RECEIVE_WINDOW=65536" >> /etc/default/dropbear
