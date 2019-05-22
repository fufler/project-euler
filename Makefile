HC = ghc
HCFLAGS = -dynamic -no-keep-hi-files -no-keep-o-files

BUILD_PATH = build
TARGETS = $(patsubst %.hs,$(BUILD_PATH)/%,$(wildcard */*.hs))

default: $(TARGETS)

$(BUILD_PATH)/%: %.hs
	mkdir -p $$(dirname $@)
	$(HC) $(HCFLAGS) $< -o $@

clean:
	rm -rf $(BUILD_PATH)

.PHONY: default clean
