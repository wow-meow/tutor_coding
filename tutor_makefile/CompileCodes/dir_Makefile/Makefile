CC := gcc
CFLAG = -Wall

SRC_DIR = .
BUILD_DIR = .
#SRC_DIR = ./src
#BUILD_DIR = ./build

TARGET = $(BUILD_DIR)/main.out

# ./src/*.c
SRCS = $(wildcard $(SRC_DIR)/*.c)

# ./src/*.c --> ./build/*.o
#OBJS = $(SRCS:.c=.o)
OBJS = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRCS))

# ./src/*.c --> ./build/*.d
#DEPS = $(SRCS:.c=.d)
DEPS = $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.d, $(SRCS))

# The default final target
all: $(TARGET)

# Linking OBJS and create the final target output
$(TARGET): $(OBJS)
	@echo '-- Building $@: Linking OBJS and create the final target output'
	mkdir -p $(dir $@); \
	$(CC) -o $@ $^
	@echo

# The rule of ./build/xyz.d <-- ./src/xyz.c
$(BUILD_DIR)/%.d: $(SRC_DIR)/%.c
	@echo '-- Generating dependencies for $<'
	mkdir -p $(dir $@); \
	rm -f $@; \
	$(CC) -MM $< > $@.tmp; \
	sed 's,\($*\)\.o[ :]*,$(BUILD_DIR)/\1.o $@ : ,g' < $@.tmp > $@; \
	rm -f $@.tmp
	@echo

# The rule of ./build/xyz.o <-- ./src/xyz.c
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@echo '-- Building $@ <-- $< according to Pattern rules'
	mkdir -p $(dir $@); \
	$(CC) $(CFLAG) -c -o $@ $<
	@echo

.PHONY: test1
test1:
	@echo '-- Test1'
	@echo 'CC: $(CC)'
	@echo 'SRCS: $(SRCS)'
	@echo 'OBJS: $(OBJS)'
	@echo 'DEPS: $(DEPS)'
	@echo

.PHONY: clean
clean:
	@echo '-- Cleaning ... '
	rm -rf $(OBJS) $(DEPS) $(TARGET)
	@echo

# Include the .d makefiles. 
# The - at the front suppresses the errors of missing Makefiles. Initially, all
# the .d files will be missing, and we don't want those errors to show up.
include $(DEPS)
#-include $(DEPS)
