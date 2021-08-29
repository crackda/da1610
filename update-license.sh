#/bin/bash

/usr/sbin/ifdown eth0:100    # --- Điền lại subinterface gia hạn license nhé! --- #

rm -f /tmp/license.key

rm -f /usr/local/directadmin/conf/license.key

/usr/bin/wget -O /tmp/license.key http://datvu.io/license.key

mv /tmp/license.key /usr/local/directadmin/conf/

chmod 600 /usr/local/directadmin/conf/license.key

chown diradmin:diradmin /usr/local/directadmin/conf/license.key

/usr/sbin/ifup eth0:100   # --- Điền lại subinterface gia hạn license nhé! --- #

/bin/systemctl restart directadmin.service
