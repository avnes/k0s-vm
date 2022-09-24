#!/bin/bash

# Configure DNS
curl https://raw.githubusercontent.com/avnes/freehold/main/vm-dns-override.sh | bash

# Install and configure HA proxy on k0s-controlplane

if [[ $(hostname) == 'k0s-controlplane' ]]; then
    dnf -y install haproxy
    cat <<EOF | tee /etc/haproxy/conf.d/k0s.cfg
#---------------------------------------------------------------------
# Load balancing for Traefik on k0s
#---------------------------------------------------------------------
frontend k0s_frontend
    bind *:80
    mode http
    option tcplog
    default_backend k0s_backend

frontend k0s_secure_frontend
    bind *:443
    mode http
    option tcplog
    default_backend k0s_secure_backend

frontend k0s_dashboard_frontend
    bind *:39000
    mode http
    acl is_root path /
    http-request redirect code 301 location http://%[hdr(host)]/dashboard/ if is_root
    #option tcplog
    default_backend k0s_dashboard_backend

backend k0s_backend
    mode http
    balance source
    server k0s-node01 10.0.1.21:32080 check
    server k0s-node02 10.0.1.22:32080 check
    server k0s-node03 10.0.1.23:32080 check

backend k0s_secure_backend
    mode http
    balance source
    server k0s-node01 10.0.1.21:32443 check
    server k0s-node02 10.0.1.22:32443 check
    server k0s-node03 10.0.1.23:32443 check

backend k0s_dashboard_backend
    mode http
    balance source
    server k0s-node01 10.0.1.21:32090 check
    server k0s-node02 10.0.1.22:32090 check
    server k0s-node03 10.0.1.23:32090 check
EOF
    systemctl enable haproxy
    systemctl start haproxy
    systemctl restart haproxy # Just in case it is already loaded and started
fi
