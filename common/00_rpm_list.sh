#!/bin/bash

/usr/bin/rpm -qa | sort > /root/rpm_list_`/bin/date "+%Y%m%d_%H%M%S"`
