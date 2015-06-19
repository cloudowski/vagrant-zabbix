#!/bin/bash

cat << EOF >> /etc/screenrc
caption always "%{wk}%?%-Lw%?%{bw}%n*%f %t%?(%u)%?%{wk}%?%+Lw %=%{mk}@%H %{yk}%D %{ck}%M%{wk} %{ck}%d %{gk}%c"
EOF

cat << EOF >> /etc/default/locale
LC_ALL="en_US.UTF-8"
EOF

[ -d /root/.mc ] || mkdir /root/.mc
cat << EOF > /root/.mc/ini
[Midnight-Commander]
navigate_with_arrows=1
EOF

if sestatus|grep -q 'SELinux status:.*enabled';then
    echo "Enabling SElinux rules for zabbix"
    setsebool -P httpd_can_network_connect_db on
    setsebool -P httpd_can_network_connect on
fi

