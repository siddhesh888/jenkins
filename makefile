SUBDIRS = find Exercise1* Exercise*/Q*

subdirs:
	for dir in $(SUBDIRS); do \
          $(MAKE) -C $$dir; \
	done

clean:
	find . -type f \( -name "*.o" -o -name "final" \) -exec rm -f {} \;


