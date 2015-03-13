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
