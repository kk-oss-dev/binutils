
tmpdir/dump:     file format elf32-kvx


Disassembly of section .plt:

.* <foo@plt-0x20>:
	...

.* <foo@plt>:
 .*:	10 00 c4 0f                                     	get \$r16 = \$pc;;

 .*:	.. .. 40 b0 .. .. .. 18                         	lwz \$r16 = [0-9]* \(0x[0-9a-f]*\)\[\$r16\];;

 .*:	10 00 d8 0f                                     	igoto \$r16;;


Disassembly of section .text:

.* <_start>:
	...
.*:	.. .. 00 18                                     	call .* <__foo_veneer>;;

.*:	00 00 d0 0f                                     	ret;;


.* <__foo_veneer>:
.*:	.. .. 40 e0 00 00 00 00                         	make \$r16 = .* \(0x[0-9a-f]*\);;

.*:	10 00 d8 0f                                     	igoto \$r16;;

