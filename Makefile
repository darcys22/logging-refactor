.PHONY: test clean compile deploy

test:
	python3 couttofmt.py --no-update --file testcout.txt

test-adjust:
	cp testcout.txt testcout-adjusted.txt
	python3 couttofmt.py --update --file testcout-adjusted.txt

clean:
	rm testcout-adjusted.txt
