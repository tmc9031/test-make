export TEST:=qwert
$(warning TEST=$(TEST))
$(warning MAKE=$(MAKE))
$(warning MAKEFLAGS=$(MAKEFLAGS))

.PHONY: all
all: subA subB
	sleep 1
	@echo $@ 1
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4
	@echo $@ 5

.PHONY: subA
subA:
	sleep 1
	@echo $@ 1
	@echo $@ 2
	make -f MakesubA.mk
	@echo $@ 3
	@echo $@ 4
	$(MAKE) -f MakesubB.mk
	@echo $@ 5

.PHONY: subB
subB:
	sleep 1
	@echo $@ 1
	sleep 1
	@echo $@ 2
	sleep 1
	@echo $@ 3
	sleep 1
	@echo $@ 4
	sleep 1
	@echo $@ 5
