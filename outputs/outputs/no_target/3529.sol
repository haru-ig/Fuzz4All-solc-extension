pragma solidity ^0.8.0;
contract m105 {
	mapping (uint => uint) public m;
	constructor() public {
		m[0] = 2;
		uint x;
		x = m[0];
		x = m[4];
		m[0] = x;
	}
}
