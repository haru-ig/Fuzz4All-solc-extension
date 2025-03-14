pragma solidity ^0.8.0;
contract m106 {
	mapping (uint => uint) m;
	constructor() public {
		m[0] = 2;
		uint x;
		x = m[0];
		x += 100;
		m[0] = x;
	}
}
