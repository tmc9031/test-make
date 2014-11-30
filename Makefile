.PHONY: all
all: subA subB
	sleep 1
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5

.PHONY: subA
subA: fileA fileAA
	sleep 1
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5

fileA: srcA
	sleep 1
	touch $@
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5
	
fileAA: srcAA
	sleep 1
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5

.PHONY: subB
subB: fileB fileBB
	sleep 1
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5
	
fileB: srcB
	sleep 1
	touch $@
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5

fileBB: srcBB
	sleep 1
	touch $@
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5

subA: subB
