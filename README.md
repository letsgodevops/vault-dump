# vault-dump

## Setup environment

```
source run.sh
```
It will create python virtual environment and install dependencies.

## Dump vault

```
export VAULT_TOKEN=s.token
export VAULT_ADDR=http://127.0.0.1:8200
vault-dump
```

Replace VAULT_TOKEN and VAULT_ADDR with proper values. Vault token should have read access to entire vault (no need to write, update, delete etc). **This will not dump any secrets**

Configuration will be stored in `./configuration` directory.

List of endpoints to be dumped:
* Policies
* Auth backends
* Audit backends
* Mounts
