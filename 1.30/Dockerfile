FROM envoyproxy/envoy:v1.30-latest

WORKDIR /app

COPY redis-envoy-tmpl.yaml  /etc/redis-envoy.yaml
COPY start_envoy.sh .

ENTRYPOINT ["/bin/bash", "/app/start_envoy.sh"]
