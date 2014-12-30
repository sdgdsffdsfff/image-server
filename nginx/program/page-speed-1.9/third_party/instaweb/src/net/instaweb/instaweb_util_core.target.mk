# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := instaweb_util_core
DEFS_Debug := '-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-D__STDC_FORMAT_MACROS' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-D_DEBUG'

# Flags passed to both C and C++ files.
CFLAGS_Debug := -Werror \
	-pthread \
	-fno-exceptions \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-fno-strict-aliasing \
	-O0 \
	-g

# Flags passed to only C (and not C++) files.
CFLAGS_C_Debug := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Debug := -fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden

INCS_Debug := -Ithird_party/chromium/src \
	-Ithird_party/instaweb/src \
	-I. \
	-Ithird_party/protobuf2 \
	-Ithird_party/protobuf2/src/src

DEFS_Release := '-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-D__STDC_FORMAT_MACROS' \
	'-DNDEBUG'

# Flags passed to both C and C++ files.
CFLAGS_Release := -Werror \
	-pthread \
	-fno-exceptions \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-D_FILE_OFFSET_BITS=64 \
	-fvisibility=hidden \
	-fno-strict-aliasing \
	-O2 \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fno-asynchronous-unwind-tables

# Flags passed to only C (and not C++) files.
CFLAGS_C_Release := 

# Flags passed to only C++ (and not C) files.
CFLAGS_CC_Release := -fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden

INCS_Release := -Ithird_party/chromium/src \
	-Ithird_party/instaweb/src \
	-I. \
	-Ithird_party/protobuf2 \
	-Ithird_party/protobuf2/src/src

OBJS := $(obj).target/$(TARGET)/third_party/instaweb/src/net/instaweb/util/file_message_handler.o \
	$(obj).target/$(TARGET)/third_party/instaweb/src/net/instaweb/util/google_message_handler.o \
	$(obj).target/$(TARGET)/third_party/instaweb/src/net/instaweb/util/message_handler.o \
	$(obj).target/$(TARGET)/third_party/instaweb/src/net/instaweb/util/string_util.o \
	$(obj).target/$(TARGET)/third_party/instaweb/src/net/instaweb/util/string_writer.o \
	$(obj).target/$(TARGET)/third_party/instaweb/src/net/instaweb/util/timer.o \
	$(obj).target/$(TARGET)/third_party/instaweb/src/net/instaweb/util/writer.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := -pthread \
	-Wl,-z,noexecstack \
	-rdynamic

LDFLAGS_Release := -pthread \
	-Wl,-z,noexecstack \
	-Wl,--gc-sections

LIBS := 

$(obj).target/third_party/instaweb/src/net/instaweb/libinstaweb_util_core.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/third_party/instaweb/src/net/instaweb/libinstaweb_util_core.a: LIBS := $(LIBS)
$(obj).target/third_party/instaweb/src/net/instaweb/libinstaweb_util_core.a: TOOLSET := $(TOOLSET)
$(obj).target/third_party/instaweb/src/net/instaweb/libinstaweb_util_core.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/third_party/instaweb/src/net/instaweb/libinstaweb_util_core.a
# Add target alias
.PHONY: instaweb_util_core
instaweb_util_core: $(obj).target/third_party/instaweb/src/net/instaweb/libinstaweb_util_core.a

# Add target alias to "all" target.
.PHONY: all
all: instaweb_util_core
