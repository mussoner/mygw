FROM  alpine:latest

RUN apk add --no-cache dhcp

EXPOSE 67/udp 67/tcp

VOLUME [ "/etc/dhcpd" ]

RUN ["touch", "/etc/dhcpd/dhcpd.leases"]

CMD [ "/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/etc/dhcp/dhcpd.conf", "-lf", "/etc/dhcpd/dhcpd.leases"]
