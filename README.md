# envoy-redis-cluster
envoy-redis-cluster-proxy

使用  envoyproxy/envoy:v1.30-latest 作为基础镜像

镜像会启动一个 envoy 服务，监听 7480 端口，将请求转发到aws redis-cluster 的 6379 端口。
最好绑定一个域名，这样使用方不需要知道具体的地址，只需要知道域名即可。

镜像启动时，会依赖Pod环境变量 REDIS_HOST,
推荐启动镜像作为 app 的 sidecar容器 或者单独作为一个代理服务
如果代理服务是一个单点，最好配置主备，避免单点故障

Local Debug Command:
```shell
docker run --name envoy-proxy \
      -e REDIS_HOST=XXXXX \
      -p 7480:7480 -p 9901:9901 envoy:1.30
```

