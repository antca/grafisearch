.PHONY: godev
build:
	pnpm run build
	go build

.PHONY: godev
dev:
	gow run .

.PHONY: frontdev
frontdev:
	pnpm run dev

.PHONY: install
install: grafisearch
	./grafisearch install

.PHONY: grafisearch
grafisearch:
	pnpm run build
	go build
