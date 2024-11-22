# Choose compiler
CC := gcc
CFLAG = -Wall 
#CC := clang
#CFLAG = -g -Wall 

# Choose language standard
#CFLAG += -std=c2x
CFLAG += -std=c17

#CFLAG += -lpthread
#CFLAG += -lunistd
#CFLAG += -D _BSD_SOURCE # for usleep() in unistd.h

#SRC_DIR = .
#BUILD_DIR = .
SRC_DIR = ./src
BUILD_DIR = ./build

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

# In a Makefile, $* represents the prefix shared by target and dependent files, or the part of a filename that matches a suffix rule:
# Explanation: $* is an automatic variable in GNU make that represents the stem
# with which an implicit rule matches. It can also be thought of as the "stem"
# part that matched in the rule definition's % bit.
#
# The rule of ./build/xyz.d <-- ./src/xyz.c
$(BUILD_DIR)/%.d: $(SRC_DIR)/%.c
	@echo '-- Generating dependencies for $<'
	#@echo $$'\'$$*\' is $*'
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
	@echo 'CFLAG: $(CFLAG)'
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

