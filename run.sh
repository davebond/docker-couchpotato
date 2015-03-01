#!/bin/sh
touch /config/CouchPotato.cfg
/usr/bin/python /couchserver/CouchPotato.py --data_dir /data/ --config_file /config/CouchPotato.cfg --console_log