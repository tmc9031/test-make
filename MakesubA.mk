
$(warning GLOBAL == $(GLOBAL))

.PHONY: allA
allA: subA-C subA-D
	sleep 1
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5

.PHONY: subA-C
subA-C:
	sleep 1
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5

.PHONY: subA-D
subA-D:
	sleep 1
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5

#subA: subB
