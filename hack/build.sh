#!/usr/bin/env bash
set -euo pipefail

source hack/setup-go.sh

go version
go build -o bin/govuln-demo-${GO_VERSION} main.go
