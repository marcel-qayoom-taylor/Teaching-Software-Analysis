# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/SVF-tools/Teaching-Software-Analysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/SVF-tools/Teaching-Software-Analysis

# Include any dependencies generated for this target.
include CodeGraph/CMakeFiles/codegraph.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CodeGraph/CMakeFiles/codegraph.dir/compiler_depend.make

# Include the progress variables for this target.
include CodeGraph/CMakeFiles/codegraph.dir/progress.make

# Include the compile flags for this target's objects.
include CodeGraph/CMakeFiles/codegraph.dir/flags.make

CodeGraph/CMakeFiles/codegraph.dir/CodeGraph.cpp.o: CodeGraph/CMakeFiles/codegraph.dir/flags.make
CodeGraph/CMakeFiles/codegraph.dir/CodeGraph.cpp.o: CodeGraph/CodeGraph.cpp
CodeGraph/CMakeFiles/codegraph.dir/CodeGraph.cpp.o: CodeGraph/CMakeFiles/codegraph.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/SVF-tools/Teaching-Software-Analysis/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CodeGraph/CMakeFiles/codegraph.dir/CodeGraph.cpp.o"
	cd /home/SVF-tools/Teaching-Software-Analysis/CodeGraph && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CodeGraph/CMakeFiles/codegraph.dir/CodeGraph.cpp.o -MF CMakeFiles/codegraph.dir/CodeGraph.cpp.o.d -o CMakeFiles/codegraph.dir/CodeGraph.cpp.o -c /home/SVF-tools/Teaching-Software-Analysis/CodeGraph/CodeGraph.cpp

CodeGraph/CMakeFiles/codegraph.dir/CodeGraph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/codegraph.dir/CodeGraph.cpp.i"
	cd /home/SVF-tools/Teaching-Software-Analysis/CodeGraph && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/SVF-tools/Teaching-Software-Analysis/CodeGraph/CodeGraph.cpp > CMakeFiles/codegraph.dir/CodeGraph.cpp.i

CodeGraph/CMakeFiles/codegraph.dir/CodeGraph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/codegraph.dir/CodeGraph.cpp.s"
	cd /home/SVF-tools/Teaching-Software-Analysis/CodeGraph && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/SVF-tools/Teaching-Software-Analysis/CodeGraph/CodeGraph.cpp -o CMakeFiles/codegraph.dir/CodeGraph.cpp.s

# Object files for target codegraph
codegraph_OBJECTS = \
"CMakeFiles/codegraph.dir/CodeGraph.cpp.o"

# External object files for target codegraph
codegraph_EXTERNAL_OBJECTS =

bin/codegraph: CodeGraph/CMakeFiles/codegraph.dir/CodeGraph.cpp.o
bin/codegraph: CodeGraph/CMakeFiles/codegraph.dir/build.make
bin/codegraph: /home/SVF-tools/SVF/z3.obj/bin/libz3.so
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMBitWriter.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMCore.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMipo.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMIRReader.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMInstCombine.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMInstrumentation.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMTarget.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMLinker.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMAnalysis.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMScalarOpts.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMSupport.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMBitWriter.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMFrontendOpenMP.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMScalarOpts.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMInstCombine.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMAggressiveInstCombine.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMVectorize.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMTransformUtils.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMAnalysis.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMProfileData.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMSymbolize.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMDebugInfoPDB.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMDebugInfoMSF.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMDebugInfoDWARF.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMObject.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMIRReader.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMAsmParser.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMBitReader.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMCore.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMRemarks.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMBitstreamReader.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMMCParser.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMTextAPI.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMMC.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMBinaryFormat.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMDebugInfoCodeView.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMTargetParser.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMSupport.a
bin/codegraph: /home/SVF-tools/SVF/llvm-16.0.0.obj/lib/libLLVMDemangle.a
bin/codegraph: /usr/lib/aarch64-linux-gnu/libz.so
bin/codegraph: /usr/lib/aarch64-linux-gnu/libtinfo.so
bin/codegraph: CodeGraph/CMakeFiles/codegraph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/SVF-tools/Teaching-Software-Analysis/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/codegraph"
	cd /home/SVF-tools/Teaching-Software-Analysis/CodeGraph && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/codegraph.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CodeGraph/CMakeFiles/codegraph.dir/build: bin/codegraph
.PHONY : CodeGraph/CMakeFiles/codegraph.dir/build

CodeGraph/CMakeFiles/codegraph.dir/clean:
	cd /home/SVF-tools/Teaching-Software-Analysis/CodeGraph && $(CMAKE_COMMAND) -P CMakeFiles/codegraph.dir/cmake_clean.cmake
.PHONY : CodeGraph/CMakeFiles/codegraph.dir/clean

CodeGraph/CMakeFiles/codegraph.dir/depend:
	cd /home/SVF-tools/Teaching-Software-Analysis && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/SVF-tools/Teaching-Software-Analysis /home/SVF-tools/Teaching-Software-Analysis/CodeGraph /home/SVF-tools/Teaching-Software-Analysis /home/SVF-tools/Teaching-Software-Analysis/CodeGraph /home/SVF-tools/Teaching-Software-Analysis/CodeGraph/CMakeFiles/codegraph.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CodeGraph/CMakeFiles/codegraph.dir/depend

