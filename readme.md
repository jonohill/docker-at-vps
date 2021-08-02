# docker-at-larrys

docker-compose configuration for managing my personal box on Oracle Cloud.

Use what you like, but it's not designed to be a reusable configuration.

## Secrets

### Setup

```
age-keygen >key.txt
```
Then put the public key in .sops.yaml

### Encrypt
```
sops -e secrets.env >secrets.enc.env
```

### Decrypt
```
export SOPS_AGE_KEY_FILE=/path/to/key.txt
sops -d secrets.enc.env >secrets.env
```
