FROM consul
COPY config/config-file.json /consul/config
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
ENV DNS_RESOLVES consul
ENV DNS_PORT 8600
ENTRYPOINT ["consul", "agent", "-config-file=/consul/config/config-file.json"]