# Check 64bit GFNI instructions

	.text
_start:
	gf2p8mulb %xmm4, %xmm5
	gf2p8mulb -123456(%rax,%r14,8), %xmm5
	gf2p8mulb 2032(%rdx), %xmm5

	gf2p8affineqb $0xab, %xmm4, %xmm5
	gf2p8affineqb $123, -123456(%rax,%r14,8), %xmm5
	gf2p8affineqb $123, 2032(%rdx), %xmm5

	gf2p8affineinvqb $0xab, %xmm4, %xmm5
	gf2p8affineinvqb $123, -123456(%rax,%r14,8), %xmm5
	gf2p8affineinvqb $123, 2032(%rdx), %xmm5

	.intel_syntax noprefix

	gf2p8mulb xmm5, xmm4
	gf2p8mulb xmm5, XMMWORD PTR [rax+r14*8-123456]
	gf2p8mulb xmm5, XMMWORD PTR [rdx+2032]

	gf2p8affineqb xmm5, xmm4, 0xab
	gf2p8affineqb xmm5, XMMWORD PTR [rax+r14*8-123456], 123
	gf2p8affineqb xmm5, XMMWORD PTR [rdx+2032], 123

	gf2p8affineinvqb xmm5, xmm4, 0xab
	gf2p8affineinvqb xmm5, XMMWORD PTR [rax+r14*8-123456], 123
	gf2p8affineinvqb xmm5, XMMWORD PTR [rdx+2032], 123
