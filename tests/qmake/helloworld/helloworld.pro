# paths to include files must be set relative to build directory
QT -= gui
CONFIG -= app_bundle
CONFIG -= qt
QMAKE_LFLAGS += -no-pie
CONFIG += c++11 console
CONFIG -= app_bundle

QMAKE_EXTRA_COMPILERS += nasm
NASMEXTRAFLAGS = -f elf64 -g -F dwarf
OTHER_FILES += $$NASM_SOURCES
nasm.output = ${QMAKE_FILE_BASE}.o
nasm.commands = nasm $$NASMEXTRAFLAGS -o ${QMAKE_FILE_BASE}.o ${QMAKE_FILE_NAME}
nasm.input = NASM_SOURCES

NASM_SOURCES += helloworld.asm

HEADERS += helloworld.inc
