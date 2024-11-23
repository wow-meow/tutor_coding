# SRC_FTYPE can be .c or .cpp
SRC_FTYPE := cpp
# CC can be gcc, g++, clang, clang++
CC := clang++

CFLAG = -g # generate debug info 
CFLAG += -Wall # warning, all

# cflag options: -std=c2x, -std=gnu2x, -std=c++2x, -std=gnu++2x
CFLAG += -std=gnu++17

# link required libs
#CFLAG += -lpthread
#CFLAG += -lunistd
#CFLAG += -D _BSD_SOURCE # for usleep() in unistd.h

#SRC_DIR = .
#BUILD_DIR = .
SRC_DIR = ./src
BUILD_DIR = ./build

TARGET = $(BUILD_DIR)/main.$(CC).out

# ./src/*.$(SRC_FTYPE)
SRCS = $(wildcard $(SRC_DIR)/*.$(SRC_FTYPE))

# ./src/*.$(SRC_FTYPE) --> ./build/*.o
#OBJS = $(SRCS:.$(SRC_FTYPE)=.o)
OBJS = $(patsubst $(SRC_DIR)/%.$(SRC_FTYPE), $(BUILD_DIR)/%.o, $(SRCS))

# ./src/*.$(SRC_FTYPE) --> ./build/*.d
#DEPS = $(SRCS:.$(SRC_FTYPE)=.d)
DEPS = $(patsubst $(SRC_DIR)/%.$(SRC_FTYPE), $(BUILD_DIR)/%.d, $(SRCS))

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
# The rule of ./build/xyz.d <-- ./src/xyz.$(SRC_FTYPE)
$(BUILD_DIR)/%.d: $(SRC_DIR)/%.$(SRC_FTYPE)
	@echo '-- Generating dependencies for $<'
	#@echo $$'\'$$*\' is $*'
	mkdir -p $(dir $@); \
	rm -f $@; \
	$(CC) -MM $< > $@.tmp; \
	sed 's,\($*\)\.o[ :]*,$(BUILD_DIR)/\1.o $@ : ,g' < $@.tmp > $@; \
	rm -f $@.tmp
	@echo

# The rule of ./build/xyz.o <-- ./src/xyz.$(SRC_FTYPE)
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.$(SRC_FTYPE)
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
