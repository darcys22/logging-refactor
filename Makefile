.PHONY: test clean compile deploy

test:
	cp testcout.txt testcout-adjusted.txt
	python3 couttofmt.py testcout-adjusted.txt

clean:
	rm testcout-adjusted.txt
