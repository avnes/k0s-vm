#!/bin/bash

# Install and configure HA proxy on odin

if [[ $(hostname) == 'odin' || $(hostname) == 'odin.anyops.site' ]]; then
    dnf -y install haproxy
    cat <<EOF | tee /etc/haproxy/conf.d/odin.cfg
#---------------------------------------------------------------------
# Load balancing for Traefik on odin
#---------------------------------------------------------------------
frontend odin_frontend
    bind *:80
    mode http
    option tcplog
    default_backend odin_backend

frontend odin_secure_frontend
    bind *:443
    mode http
    option tcplog
    default_backend odin_secure_backend

frontend odin_dashboard_frontend
    bind *:39000
    mode http
    acl is_root path /
    http-request redirect code 301 location http://%[hdr(host)]/dashboard/ if is_root
    #option tcplog
    default_backend odin_dashboard_backend

backend odin_backend
    mode http
    balance source
    server hugin.anyops.site 192.168.1.121:32080 check
    server munin.anyops.site 192.168.1.122:32080 check

backend odin_secure_backend
    mode http
    balance source
    server hugin.anyops.site 192.168.1.121:32443 check
    server munin.anyops.site 192.168.1.122:32443 check

backend odin_dashboard_backend
    mode http
    balance source
    server hugin.anyops.site 192.168.1.121:32090 check
    server munin.anyops.site 192.168.1.122:32090 check
EOF
    systemctl enable haproxy
    systemctl start haproxy
    systemctl restart haproxy # Just in case it is already loaded and started
fi
