# as default, run the first command
# file to be created : dependencies
x.txt: m.txt c.txt
	cat m.txt c.txt > x.txt

m.txt: a.txt b.txt
	cat a.txt b.txt > m.txt

# clean is a phony target
.PHONY: clean
clean:
	rm -f m.txt
	rm -f x.txt

# create an instantiation of SHELL for each line
.PHONY: cd
cd:
	pwd
	cd ..
	pwd

# all commands concatenated on one line by `\`
.PHONY: cd_ok_1
cd_ok_1:
	pwd; \
	cd ..; \
	pwd

.PHONY: cd_ok_2
cd_ok_2:
	pwd && cd .. && pwd

no_output:
	@echo 'not display'
	echo 'will display'

has_error:
	rm zzz.txt
	echo 'ok, means no break, not interrupted by command error'

ignore_error:
	-rm zzz.txt
	echo 'ok, means no break, not interrupted by command error'


