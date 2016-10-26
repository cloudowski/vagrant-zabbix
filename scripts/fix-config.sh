#!/bin/bash

rm /etc/zabbix/web/zabbix.conf.php
chmod 775 /etc/zabbix/web/
chgrp apache /etc/zabbix/web/
#cat << EOF > /etc/zabbix/web/zabbix.conf.php
#
#<?php
#// Zabbix GUI configuration file.
#global \$DB;
#
#\$DB['TYPE']     = 'POSTGRESQL';
#\$DB['SERVER']   = 'localhost';
#\$DB['PORT']     = '0';
#\$DB['DATABASE'] = 'zabbix_server';
#\$DB['USER']     = 'zabbix_server';
#\$DB['PASSWORD'] = 'zabbix_server';
#
#// Schema name. Used for IBM DB2 and PostgreSQL.
#\$DB['SCHEMA'] = '';
#
#\$ZBX_SERVER      = 'localhost';
#\$ZBX_SERVER_PORT = '10051';
#\$ZBX_SERVER_NAME = '';
#
#\$IMAGE_FORMAT_DEFAULT = IMAGE_FORMAT_PNG;
#
#EOF
