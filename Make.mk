
ARFLAGS := 34
AR := ar $(ARFLAGS) r

.PHONY: all
all: 
	@echo $(AR)
	@echo $@ 2
	@echo $@ 3
	@echo $@ 4

