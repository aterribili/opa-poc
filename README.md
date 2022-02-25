## OPA POC

## Running

```bash
$ bash run-opa.sh
```

## How to query permission
```bash
$ curl -X POST http://localhost:8181/v1/data/auth/ops/health -H 'Content-Type: application/json' -d @input.json | jq
```

## How to fetch data

```bash
curl http://localhost:8181/v1/data/roles/engineer
```
