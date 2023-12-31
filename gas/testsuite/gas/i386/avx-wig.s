# Check AVX WIG instructions

	.text
_start:
	andn (%eax), %eax, %eax
	bextr %eax, (%eax), %eax
	bextr $0, (%eax), %eax
	blcfill (%eax), %eax
	blci (%eax), %eax
	blcic (%eax), %eax
	blcmsk (%eax), %eax
	blcs (%eax), %eax
	blsfill (%eax), %eax
	blsi (%eax), %eax
	blsic (%eax), %eax
	blsmsk (%eax), %eax
	blsr (%eax), %eax
	bzhi %eax, (%eax), %eax
	kmovd %eax, %k0
	kmovd %k0, %eax
	llwpcb %eax
	lwpins $0, (%eax), %eax
	lwpval $0, (%eax), %eax
	mulx (%eax), %eax, %eax
	pdep (%eax), %eax, %eax
	pext (%eax), %eax, %eax
	rorx $0, (%eax), %eax
	sarx %eax, (%eax), %eax
	shlx %eax, (%eax), %eax
	shrx %eax, (%eax), %eax
	slwpcb %eax
	t1mskc (%eax), %eax
	tzmsk (%eax), %eax
	vaddpd %ymm4,%ymm6,%ymm2
	vaddps %ymm4,%ymm6,%ymm2
	vaddsd %xmm4,%xmm6,%xmm2
	vaddss %xmm4,%xmm6,%xmm2
	vaddsubpd %ymm4,%ymm6,%ymm2
	vaddsubps %ymm4,%ymm6,%ymm2
	vaesdec %xmm4,%xmm6,%xmm2
	vaesdeclast %xmm4,%xmm6,%xmm2
	vaesenc %xmm4,%xmm6,%xmm2
	vaesenclast %xmm4,%xmm6,%xmm2
	vaesimc %xmm4,%xmm6
	vaeskeygenassist $7,%xmm4,%xmm6
	vandnpd %ymm4,%ymm6,%ymm2
	vandnps %ymm4,%ymm6,%ymm2
	vandpd %ymm4,%ymm6,%ymm2
	vandps %ymm4,%ymm6,%ymm2
	vblendpd $7,%ymm4,%ymm6,%ymm2
	vblendps $7,%ymm4,%ymm6,%ymm2
	vcmpeqpd %ymm4,%ymm6,%ymm2
	vcmpeqps %ymm4,%ymm6,%ymm2
	vcmpeqsd %xmm4,%xmm6,%xmm2
	vcmpeqss %xmm4,%xmm6,%xmm2
	vcmppd $7,%ymm4,%ymm6,%ymm2
	vcmpps $7,%ymm4,%ymm6,%ymm2
	vcmpsd $7,%xmm4,%xmm6,%xmm2
	vcmpss $7,%xmm4,%xmm6,%xmm2
	vcomisd %xmm4,%xmm6
	vcomiss %xmm4,%xmm6
	vcvtdq2pd %xmm4,%ymm4
	vcvtdq2ps %ymm4,%ymm6
	vcvtpd2dqy %ymm4,%xmm4
	vcvtpd2dqx %xmm4,%xmm6
	vcvtpd2dqy %ymm4,%xmm4
	vcvtpd2psy %ymm4,%xmm4
	vcvtpd2psx %xmm4,%xmm6
	vcvtpd2psy %ymm4,%xmm4
	vcvtps2dq %ymm4,%ymm6
	vcvtps2pd %xmm4,%ymm4
	vcvtsd2ss %xmm4,%xmm6,%xmm2
	vcvtsi2ss %eax, %xmm0, %xmm0
	vcvtsi2ss (%eax), %xmm0, %xmm0
	vcvtsi2sd %eax, %xmm0, %xmm0
	vcvtsi2sd (%eax), %xmm0, %xmm0
	vcvtss2sd %xmm4,%xmm6,%xmm2
	vcvtss2si %xmm0, %eax
	vcvtsd2si %xmm0, %eax
	vcvttpd2dqy %ymm4,%xmm4
	vcvttpd2dqx %xmm4,%xmm6
	vcvttpd2dqy %ymm4,%xmm4
	vcvttps2dq %ymm4,%ymm6
	vcvttss2si %xmm0, %eax
	vcvttsd2si %xmm0, %eax
	vdivpd %ymm4,%ymm6,%ymm2
	vdivps %ymm4,%ymm6,%ymm2
	vdivsd %xmm4,%xmm6,%xmm2
	vdivss %xmm4,%xmm6,%xmm2
	vdppd $7,%xmm4,%xmm6,%xmm2
	vdpps $7,%ymm4,%ymm6,%ymm2
	vextractps $7,%xmm4,(%ecx)
	vhaddpd %ymm4,%ymm6,%ymm2
	vhaddps %ymm4,%ymm6,%ymm2
	vhsubpd %ymm4,%ymm6,%ymm2
	vhsubps %ymm4,%ymm6,%ymm2
	vinsertps $7,%xmm4,%xmm6,%xmm2
	vlddqu (%ecx),%ymm4
	vldmxcsr (%ecx)
	vmaskmovdqu %xmm4,%xmm6
	vmaxpd %ymm4,%ymm6,%ymm2
	vmaxps %ymm4,%ymm6,%ymm2
	vmaxsd %xmm4,%xmm6,%xmm2
	vmaxss %xmm4,%xmm6,%xmm2
	vminpd %ymm4,%ymm6,%ymm2
	vminps %ymm4,%ymm6,%ymm2
	vminsd %xmm4,%xmm6,%xmm2
	vminss %xmm4,%xmm6,%xmm2
	vmovapd %ymm4,%ymm6
	vmovaps %ymm4,%ymm6
	{store} vmovapd %ymm4,%ymm6
	{store} vmovaps %ymm4,%ymm6
	vmovd %eax, %xmm0
	vmovd (%eax), %xmm0
	vmovd %xmm0, %eax
	vmovd %xmm0, (%eax)
	vmovddup %ymm4,%ymm6
	vmovdqa %ymm4,%ymm6
	vmovdqu %ymm4,%ymm6
	{store} vmovdqa %ymm4,%ymm6
	{store} vmovdqu %ymm4,%ymm6
	vmovhlps %xmm4,%xmm6,%xmm2
	vmovhpd (%ecx),%xmm4,%xmm6
	vmovhpd %xmm4,(%ecx)
	vmovhps (%ecx),%xmm4,%xmm6
	vmovhps %xmm4,(%ecx)
	vmovlhps %xmm4,%xmm6,%xmm2
	vmovlpd (%ecx),%xmm4,%xmm6
	vmovlpd %xmm4,(%ecx)
	vmovlps (%ecx),%xmm4,%xmm6
	vmovlps %xmm4,(%ecx)
	vmovmskpd %xmm4,%ecx
	vmovmskps %xmm4,%ecx
	vmovntdq %ymm4,(%ecx)
	vmovntdqa (%ecx),%xmm4
	vmovntpd %ymm4,(%ecx)
	vmovntps %ymm4,(%ecx)
	vmovq %xmm4,%xmm6
	vmovq %xmm4,(%ecx)
	vmovsd (%ecx),%xmm4
	vmovsd %xmm4,(%ecx)
	vmovshdup %ymm4,%ymm6
	vmovsldup %ymm4,%ymm6
	vmovss (%ecx),%xmm4
	vmovss %xmm4,(%ecx)
	vmovupd %ymm4,%ymm6
	vmovupd %ymm4,(%ecx)
	vmovups %ymm4,%ymm6
	vmovups %ymm4,(%ecx)
	vmpsadbw $7,%xmm4,%xmm6,%xmm2
	vmulpd %ymm4,%ymm6,%ymm2
	vmulps %ymm4,%ymm6,%ymm2
	vmulsd %xmm4,%xmm6,%xmm2
	vmulss %xmm4,%xmm6,%xmm2
	vorpd %ymm4,%ymm6,%ymm2
	vorps %ymm4,%ymm6,%ymm2
	vpabsb %xmm4,%xmm6
	vpabsd %xmm4,%xmm6
	vpabsw %xmm4,%xmm6
	vpackssdw %xmm4,%xmm6,%xmm2
	vpacksswb %xmm4,%xmm6,%xmm2
	vpackusdw %xmm4,%xmm6,%xmm2
	vpackuswb %xmm4,%xmm6,%xmm2
	vpaddb %xmm4,%xmm6,%xmm2
	vpaddd %xmm4,%xmm6,%xmm2
	vpaddq %xmm4,%xmm6,%xmm2
	vpaddsb %xmm4,%xmm6,%xmm2
	vpaddsw %xmm4,%xmm6,%xmm2
	vpaddusb %xmm4,%xmm6,%xmm2
	vpaddusw %xmm4,%xmm6,%xmm2
	vpaddw %xmm4,%xmm6,%xmm2
	vpalignr $7,%xmm4,%xmm6,%xmm2
	vpand %xmm4,%xmm6,%xmm2
	vpandn %xmm4,%xmm6,%xmm2
	vpavgb %xmm4,%xmm6,%xmm2
	vpavgw %xmm4,%xmm6,%xmm2
	vpblendw $7,%xmm4,%xmm6,%xmm2
	vpclmulhqhqdq %xmm4,%xmm6,%xmm2
	vpclmulhqlqdq %xmm4,%xmm6,%xmm2
	vpclmullqhqdq %xmm4,%xmm6,%xmm2
	vpclmullqlqdq %xmm4,%xmm6,%xmm2
	vpclmulqdq $7,%xmm4,%xmm6,%xmm2
	vpcmpeqb %xmm4,%xmm6,%xmm2
	vpcmpeqd %xmm4,%xmm6,%xmm2
	vpcmpeqq %xmm4,%xmm6,%xmm2
	vpcmpeqw %xmm4,%xmm6,%xmm2
	vpcmpestri $0, %xmm0, %xmm0
	vpcmpestrm $0, %xmm0, %xmm0
	vpcmpgtb %xmm4,%xmm6,%xmm2
	vpcmpgtd %xmm4,%xmm6,%xmm2
	vpcmpgtq %xmm4,%xmm6,%xmm2
	vpcmpgtw %xmm4,%xmm6,%xmm2
	vpcmpistri $7,%xmm4,%xmm6
	vpcmpistrm $7,%xmm4,%xmm6
	vpextrb $0, %xmm0, %eax
	vpextrb $0, %xmm0, (%eax)
	vpextrd $0, %xmm0, %eax
	vpextrd $0, %xmm0, (%eax)
	vpextrw $0, %xmm0, %eax
	{store} vpextrw $0, %xmm0, %eax
	vpextrw $0, %xmm0, (%eax)
	vphaddd %xmm4,%xmm6,%xmm2
	vphaddsw %xmm4,%xmm6,%xmm2
	vphaddw %xmm4,%xmm6,%xmm2
	vphminposuw %xmm4,%xmm6
	vphsubd %xmm4,%xmm6,%xmm2
	vphsubsw %xmm4,%xmm6,%xmm2
	vphsubw %xmm4,%xmm6,%xmm2
	vpinsrb $0, %eax, %xmm0, %xmm0
	vpinsrb $0, (%eax), %xmm0, %xmm0
	vpinsrd $0, %eax, %xmm0, %xmm0
	vpinsrd $0, (%eax), %xmm0, %xmm0
	vpinsrw $0, %eax, %xmm0, %xmm0
	vpinsrw $0, (%eax), %xmm0, %xmm0
	vpmaddubsw %xmm4,%xmm6,%xmm2
	vpmaddwd %xmm4,%xmm6,%xmm2
	vpmaxsb %xmm4,%xmm6,%xmm2
	vpmaxsd %xmm4,%xmm6,%xmm2
	vpmaxsw %xmm4,%xmm6,%xmm2
	vpmaxub %xmm4,%xmm6,%xmm2
	vpmaxud %xmm4,%xmm6,%xmm2
	vpmaxuw %xmm4,%xmm6,%xmm2
	vpminsb %xmm4,%xmm6,%xmm2
	vpminsd %xmm4,%xmm6,%xmm2
	vpminsw %xmm4,%xmm6,%xmm2
	vpminub %xmm4,%xmm6,%xmm2
	vpminud %xmm4,%xmm6,%xmm2
	vpminuw %xmm4,%xmm6,%xmm2
	vpmovmskb %xmm4,%ecx
	vpmovsxbd %xmm4,%xmm6
	vpmovsxbq %xmm4,%xmm6
	vpmovsxbw %xmm4,%xmm6
	vpmovsxdq %xmm4,%xmm6
	vpmovsxwd %xmm4,%xmm6
	vpmovsxwq %xmm4,%xmm6
	vpmovzxbd %xmm4,%xmm6
	vpmovzxbq %xmm4,%xmm6
	vpmovzxbw %xmm4,%xmm6
	vpmovzxdq %xmm4,%xmm6
	vpmovzxwd %xmm4,%xmm6
	vpmovzxwq %xmm4,%xmm6
	vpmuldq %xmm4,%xmm6,%xmm2
	vpmulhrsw %xmm4,%xmm6,%xmm2
	vpmulhuw %xmm4,%xmm6,%xmm2
	vpmulhw %xmm4,%xmm6,%xmm2
	vpmulld %xmm4,%xmm6,%xmm2
	vpmullw %xmm4,%xmm6,%xmm2
	vpmuludq %xmm4,%xmm6,%xmm2
	vpor %xmm4,%xmm6,%xmm2
	vpsadbw %xmm4,%xmm6,%xmm2
	vpshufb %xmm4,%xmm6,%xmm2
	vpshufd $7,%xmm4,%xmm6
	vpshufhw $7,%xmm4,%xmm6
	vpshuflw $7,%xmm4,%xmm6
	vpsignb %xmm4,%xmm6,%xmm2
	vpsignd %xmm4,%xmm6,%xmm2
	vpsignw %xmm4,%xmm6,%xmm2
	vpslld %xmm4,%xmm6,%xmm2
	vpslldq $7,%xmm4,%xmm6
	vpsllq %xmm4,%xmm6,%xmm2
	vpsllw %xmm4,%xmm6,%xmm2
	vpsrad %xmm4,%xmm6,%xmm2
	vpsraw %xmm4,%xmm6,%xmm2
	vpsrld %xmm4,%xmm6,%xmm2
	vpsrldq $7,%xmm4,%xmm6
	vpsrlq %xmm4,%xmm6,%xmm2
	vpsrlw %xmm4,%xmm6,%xmm2
	vpsubb %xmm4,%xmm6,%xmm2
	vpsubd %xmm4,%xmm6,%xmm2
	vpsubq %xmm4,%xmm6,%xmm2
	vpsubsb %xmm4,%xmm6,%xmm2
	vpsubsw %xmm4,%xmm6,%xmm2
	vpsubusb %xmm4,%xmm6,%xmm2
	vpsubusw %xmm4,%xmm6,%xmm2
	vpsubw %xmm4,%xmm6,%xmm2
	vptest %ymm4,%ymm6
	vpunpckhbw %xmm4,%xmm6,%xmm2
	vpunpckhdq %xmm4,%xmm6,%xmm2
	vpunpckhqdq %xmm4,%xmm6,%xmm2
	vpunpckhwd %xmm4,%xmm6,%xmm2
	vpunpcklbw %xmm4,%xmm6,%xmm2
	vpunpckldq %xmm4,%xmm6,%xmm2
	vpunpcklqdq %xmm4,%xmm6,%xmm2
	vpunpcklwd %xmm4,%xmm6,%xmm2
	vpxor %xmm4,%xmm6,%xmm2
	vrcpps %ymm4,%ymm6
	vrcpss %xmm4,%xmm6,%xmm2
	vroundpd $7,%ymm6,%ymm2
	vroundps $7,%ymm6,%ymm2
	vroundsd $7,%xmm4,%xmm6,%xmm2
	vroundss $7,%xmm4,%xmm6,%xmm2
	vrsqrtps %ymm4,%ymm6
	vrsqrtss %xmm4,%xmm6,%xmm2
	vshufpd $7,%ymm4,%ymm6,%ymm2
	vshufps $7,%ymm4,%ymm6,%ymm2
	vsqrtpd %ymm4,%ymm6
	vsqrtps %ymm4,%ymm6
	vsqrtsd %xmm4,%xmm6,%xmm2
	vsqrtss %xmm4,%xmm6,%xmm2
	vstmxcsr (%ecx)
	vsubpd %ymm4,%ymm6,%ymm2
	vsubps %ymm4,%ymm6,%ymm2
	vsubsd %xmm4,%xmm6,%xmm2
	vsubss %xmm4,%xmm6,%xmm2
	vucomisd %xmm4,%xmm6
	vucomiss %xmm4,%xmm6
	vunpckhpd %ymm4,%ymm6,%ymm2
	vunpckhps %ymm4,%ymm6,%ymm2
	vunpcklpd %ymm4,%ymm6,%ymm2
	vunpcklps %ymm4,%ymm6,%ymm2
	vxorpd %ymm4,%ymm6,%ymm2
	vxorps %ymm4,%ymm6,%ymm2
	vzeroall
	vzeroupper
