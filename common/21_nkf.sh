#!/bin/bash

/usr/bin/yum install -y nkf
/usr/bin/yum update  -y nkf
/bin/mkdir -p -m 755 /usr/local/bin/
/bin/ln -sf /usr/bin/nkf  /usr/local/bin/nkf
