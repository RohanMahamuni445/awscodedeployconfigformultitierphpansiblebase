#!/bin/bash
/opt/lampp/bin/mysql -u root --socket=/opt/lampp/var/mysql/mysql.sock library_db < /opt/lampp/htdocs/library_db.sql
