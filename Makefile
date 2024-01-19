GOOS?=$(shell go env GOOS)
GOARCH?=$(shell go env GOARCH)

.PHONY: lint test build

lint:
	echo "Verifying go mod tidy"
	hack/verify-mod-tidy.sh
	echo "Verifying gofmt"
	hack/verify-gofmt.sh
	echo "Verifying linting"
	hack/verify-golint.sh

test:
	hack/run-test.sh

build:
	hack/build.sh
