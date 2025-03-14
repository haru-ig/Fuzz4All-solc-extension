pragma solidity ^0.8.0;
contract m106 {
	mapping (uint => uint) public m;
	constructor() public {
		m[1] = 2;
		uint x0;
		x0 = m[1];
		x0 = m[0];
		m[1] = x0;
	}
}
contract m104 {
	function m103() public {
		m103();
		uint i;
	}
}
