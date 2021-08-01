# docker-at-larrys

docker-compose configuration for managing my personal box on Oracle Cloud.

Use what you like, but it's not designed to be a reusable configuration.

## Secrets

Decrypt
```
sops -d secrets.enc.env >secrets.env
```

Encrypt
```
sops -e secrets.env >secrets.enc.env
```
