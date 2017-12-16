#!/bin/bash

python /var/services/homes/admin_srv01/code/sortphotos/src/sortphotos.py --sort %Y/%m-%b --rename %Y_%m%d_%H%M%S /volume1/photo/backup_chris_huawei/ /volume1/photo/

rm -fR /volume1/photo/backup_chris_huawei/@eaDir
