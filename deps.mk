ifeq (,$(filter $(MAKECMDGOALS),clean distclean mostlyclean maintainer-clean TAGS)) # It's a logical OR ;)
IGNORE  := $(shell mkdir -p $(DEPDIR))
DEPS    := $(patsubst %.c,$(DEPDIR)/%.d,$(SOURCES))
DEPS    += $(patsubst %.S,$(DEPDIR)/%.d,$(ASMSOURCES))
endif

