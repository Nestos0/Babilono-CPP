BUILD_DIR := build
CMAKE := cmake
GENERATOR := Ninja

all:
	$(CMAKE) -S . -B $(BUILD_DIR)
	$(CMAKE) --build $(BUILD_DIR)

run: all
	./$(BUILD_DIR)/Babilono

# 清理
clean:
	rm -rf $(BUILD_DIR)

.PHONY: all run clean
