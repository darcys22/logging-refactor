.PHONY: test clean compile deploy

test:
	cp testcout.txt testcout-adjusted.txt
	python3 couttofmt.py testcout.txt

clean:
	rm testcout-adjusted.txt
