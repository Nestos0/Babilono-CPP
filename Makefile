BUILD_DIR := build
CMAKE := cmake
GENERATOR := Ninja

all:
	$(CMAKE) -S . -B $(BUILD_DIR) -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
	$(CMAKE) --build $(BUILD_DIR)

run: all
	./$(BUILD_DIR)/Babilono

# 清理
clean:
	rm -rf $(BUILD_DIR)

.PHONY: all run clean
