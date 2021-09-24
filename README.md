# [Tinyproxy](https://tinyproxy.github.io) on [fly.io](https://fly.io)

## Deploy

```sh
export PROXY_USER='<your-user>'
export PROXY_PASSWORD='<your-password>'

fly init --import=fly-template.toml
fly deploy --build-arg USER="$PROXY_USER" --build-arg PASSWORD="$PROXY_PASSWORD"
```

## Allocate IPs if there's no IP in `fly info`

```sh
fly ips allocate-v4
fly ips allocate-v6
```

## Test

```sh
export PROXY_IP=$(fly ips list | awk '/v4/ {print $2}')

curl --proxy "http://$PROXY_USER:$PROXY_PASSWORD@$PROXY_IP:10028" https://ifconfig.co
```
