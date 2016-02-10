
intermediates := out

empty :=
space := $(empty) $(empty)
colon := :
equal := =

define convert-object-flags
$(subst $(space),$(colon),$(strip $(1)))$(equal)$(subst $(space),$(colon),$(strip $(2)))
endef

define get-object-flags-1
$(subst $(colon),$(space),$(word 1,$(subst $(equal),$(space),$(1))))
endef

define get-object-flags-2
$(subst $(colon),$(space),$(word 2,$(subst $(equal),$(space),$(1))))
endef

OBJECT2 := lib.o func.o
OBJECT1 := main.o
FLAGS := -DXX -Wa,option -DYY

LOCAL_OBJECT_FLAGS_APPEND := $(call convert-object-flags,$(OBJECT1),$(FLAGS))
LOCAL_OBJECT_FLAGS_APPEND += $(call convert-object-flags,$(OBJECT2),-DXX -Wa,option -DYY)

$(warning LOCAL_OBJECT_FLAGS_APPEND == $(LOCAL_OBJECT_FLAGS_APPEND))

$(intermediates)/lib.o: PRIVATE_CFLAGS := oooooooooo

$(foreach flags,$(LOCAL_OBJECT_FLAGS_APPEND),$(eval $(addprefix $(intermediates)/,$(call get-object-flags-1,$(flags))): PRIVATE_CFLAGS += $(call get-object-flags-2,$(flags))))

.PHONY: all
all: $(intermediates)/lib.o
	@echo $(LOCAL_OBJECT_FLAGS_APPEND)
	@echo $(ARGS)
#	@echo $(main.o:func.o)

$(intermediates)/lib.o:
	@echo $(PRIVATE_CFLAGS)
