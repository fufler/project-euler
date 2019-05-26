HC = ghc
HCFLAGS = -dynamic -no-keep-hi-files -no-keep-o-files

BUILD_PATH = build
TARGETS = $(patsubst %.hs,$(BUILD_PATH)/%,$(wildcard */*.hs))
INPUTS = $(patsubst %,$(BUILD_PATH)/%,$(wildcard */*.txt))
RUN_TARGETS = $(patsubst %,%.run,$(TARGETS))

default: $(TARGETS) $(INPUTS)

$(BUILD_PATH)/%: %.hs
	mkdir -p $$(dirname $@)
	$(HC) $(HCFLAGS) $< -o $@

$(BUILD_PATH)/%.txt: %.txt
	cp $< $@

$(BUILD_PATH)/%.run: $(BUILD_PATH)/%
	( cd $(shell dirname $<) && ./$(shell basename $<) )

clean:
	rm -rf $(BUILD_PATH)

.PHONY: default clean
