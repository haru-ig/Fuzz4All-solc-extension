pragma solidity ^0.8.0;
contract m104 {
	mapping (uint => uint) public m;
	constructor() public {
		m[0] = 2;
		m[4] = 4;
		uint x;
		x = m[4];
		x = m[0];
		m[4] = x;
		x = m[0];
		x = m[5];
	}
}
