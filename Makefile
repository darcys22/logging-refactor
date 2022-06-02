.PHONY: test clean compile deploy

test:
	cp testcout2.txt testcout2-adjusted.txt
	python3 couttofmt.py testcout2.txt

clean:
	rm testcout2-adjusted.txt
