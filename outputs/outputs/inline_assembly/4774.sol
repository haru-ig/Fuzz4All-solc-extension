pragma solidity ^0.8.0;
contract mutator1201{
	uint32 _h;
	uint8 _w;
	constructor() {
		_h = 0x7ffffFFF;
		_w = 8;
		require(_h <= 0x7ffffFFF, "_h is not lesser than 0xFFFFFFFF");
	}
}
