#objdump: -dw -Mintel
#name: x86_64 XSAVEC insns (Intel disassembly)
#source: x86-64-xsavec.s

.*: +file format .*


Disassembly of section \.text:

0+ <_start>:
[ 	]*[a-f0-9]+:[ 	]*48 0f c7 21[ 	]*xsavec64 \[rcx\]
[ 	]*[a-f0-9]+:[ 	]*4a 0f c7 a4 f0 23 01 00 00[ 	]*xsavec64 \[rax\+r14\*8\+0x123\]
[ 	]*[a-f0-9]+:[ 	]*48 0f c7 21[ 	]*xsavec64 \[rcx\]
[ 	]*[a-f0-9]+:[ 	]*4a 0f c7 a4 f0 34 12 00 00[ 	]*xsavec64 \[rax\+r14\*8\+0x1234\]
#pass
