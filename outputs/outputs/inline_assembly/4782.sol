pragma solidity ^0.8.0;
contract mutator1202{
	uint32[2] _h;
	address[] _addr;
	address _addr1;
	constructor(address addr) {
		_addr.push(addr);
		_addr.push(addr);
		_h[0] = 0x7ffffFFF;
		_addr1 = addr;
	}
}
