# it's just wrapper around xc, but with some additional features
#
# home site  https://xcfile.dev
# source     https://github.com/joerdav/xc

CMD := xc

execute:  # deploy eXeCute tool (xc)
	go install golang.org/dl/go1.22.6@latest && \
	go install github.com/joerdav/xc/cmd/xc@latest

#

venv:  # prepare virtual environment with all project requirements
	$(CMD) venv

test:
	$(CMD) test

lint:  # run all pre-commit checks
	$(CMD) lint

bump:  # bump project version with new tag
	$(CMD) bump

#

clean:
	$(CMD) clean

clean-all:  # with virtual environment too
	$(CMD) clean-all

#

publish:  # bump and upload to pypi
	$(CMD) publish

check:  # bump project version with new tag
	$(CMD) test && $(CMD) lint

.DEFAULT_GOAL := check
