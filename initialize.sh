#! /bin/sh

# 8080 to 80
iptables -I INPUT -p tcp --dport 8080 -j ACCEPT
iptables -t nat -A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80

# 8443 to 443
iptables -I INPUT -p tcp --dport 8443 -j ACCEPT
iptables -t nat -A PREROUTING -p tcp --dport 8443 -j REDIRECT --to-port 443
