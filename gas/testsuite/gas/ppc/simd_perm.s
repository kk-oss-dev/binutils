	.text
_start:
	vextdubvlx 0,1,2,3
	vextdubvrx 4,5,6,7
	vextduhvlx 8,9,10,11
	vextduhvrx 12,13,14,15
	vextduwvlx 16,17,18,19
	vextduwvrx 20,21,22,23
	vextddvlx 24,25,26,27
	vextddvrx 28,29,30,31
	vinsblx 0,1,2
	vinsbrx 3,4,5
	vinshlx	6,7,8
	vinshrx	9,10,11
	vinswlx 12,13,14
	vinswrx 15,16,17
	vinsdlx 18,19,20
	vinsdrx 21,22,23
	vinsbvlx 24,25,26
	vinsbvrx 27,28,29
	vinshvlx 30,31,0
	vinshvrx 1,2,3
	vinswvlx 4,5,6
	vinswvrx 7,8,9
	vinsw	10,11,12
	vinsd	13,14,3
	vsldbi	15,16,17,5
	vsrdbi	18,19,20,7
	xxspltiw 63,0x01234567
	xxsplti32dx 62,1,0x89abcdef
	xxspltidp 61,0x01234567
	lxvkq	60,24
	xxblendvb 59,58,57,56
	xxblendvh 55,54,53,52
	xxblendvw 51,50,49,48
	xxblendvd 47,46,45,44
	xxpermx	43,42,41,40,7
