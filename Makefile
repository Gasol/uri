PHPUNIT_CMD := vendor/bin/phpunit
COMPOSER_CMD := composer

all: test

test: vendor
	$(PHPUNIT_CMD)

vendor:
	$(COMPOSER_CMD) install

.PHONY: all test vendor
