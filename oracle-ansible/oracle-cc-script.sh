#!/usr/bin/expect -f
spawn ./cc-platform-jdk11-20.07.16-SNAPSHOT-installer.bash
expect  { -i "Provide a root installation directory:\r" timeout -1}
send -- "/home/joshi/oracle-ansible/oracle-cc\r"
expect { -i "prompt>\r"}
send -- "";
sleep 80
sleep 80
sleep 80
sleep 80
sleep 80
expect { -i "Provide the clari5 database type (oracle|sqlserver|mysql) {default = oracle}:\r" timeout -1}
send -- "oracle\r"
expect { -i "Provide a database ip :\r" timeout -1}
send -- "192.168.5.65\r"
expect { -i "Provide a database port {default = 1521}:\r" timeout -1}
send -- "1521\r"
expect { -i "Provide a database sid :\r" timeout -1}
send -- "db12c\r"
expect { -i "Provide a database user for CC schema {default = clari5_cc}:\r" timeout -1}
send -- "cxpsadm_joshi_48dev\r"
expect { -i "Provide the password management type (SIMPLE|1WAY) {default = SIMPLE}:\r" timeout -1}
send -- "SIMPLE\r"
expect { -i "Provide a clari5 database password seed :\r" timeout -1}
send -- "c_xps1234\r"
expect { -i "choice {default = 1}: \r" timeout -1}
send -- "1\r"
expect { -i "Is this DR machine? \[true, false\] {default = false}: \r" timeout -1}
send -- "false\r"
expect { -i "Provide the type of tenancy enabled (SINGLE|MULTIPLE) {default = SINGLE}: \r" timeout -1}
send -- "SINGLE\r"
expect { -i "Provide if unicode is enabled (true|false) {default = false}: \r" timeout -1}
send -- "false\r"
expect { -i "Provide the user authentication type (DATABASE|LDAP|SAML) {default = LDAP}: \r" timeout -1}
send -- "DATABASE\r"
expect { -i "Provide path for log directory : \r" timeout -1}
send -- "/home/joshi/oracle-ansible/oracle-cc/logs\r"
expect { -i "Provide the network DN : \r" timeout -1}
send -- "joshi.customerxps.com:6504\r"
expect { -i "Provide the network parent domain (eg. for clari5.example.com, parent domain is example.com) {default = customerxps.com}: \r" timeout -1}
send -- "customerxps.com\r"
expect { -i "Provide this machine's fully qualified hostname : \r" timeout -1}
send -- "joshi.customerxps.com\r"
expect { -i "Provide a webserver HTTPS port {default = 2504}: \r" timeout -1}
send -- "6504\r"
expect { -i "Provide the protocol for internal communication (http|https) {default = https}: \r" timeout -1}
send -- "https\r"
expect { -i "Starting port range {default = 3000}: \r" timeout -1}
send -- "3000\r"
expect { -i "Provide the INFLUX IP Address :  {default = 0.0.0.0}: \r" timeout -1}
send -- "0.0.0.0\r"
expect { -i"Provide the Influxdb IP Port :  {default = 0}: \r" timeout -1}
send -- "0\r"
expect { -i "Provide the INFLUXDB user(default empty) :  {default =   }: \r" timeout -1}
send -- "\r"
expect { -i "Provide the INFLUXDB user password (default empty):  {default =   }: \r" timeout -1}
send -- "\r"
expect { -i "Provide path for network certificate : \r" timeout -1}
send -- "/home/joshi/CXPS/CERTS/HOSTNAME-certificate.crt\r"
expect { -i "Provide path for network certificate key : \r" timeout -1}
send -- "/home/joshi/CXPS/CERTS/HOSTNAME-private.pem\r"
expect { -i "Provide path for network certificate bundle : \r" timeout -1}
send -- "/home/joshi/CXPS/CERTS/HOSTNAME-certificate.crt\r"
wait
expect eof
