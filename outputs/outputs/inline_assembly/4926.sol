pragma solidity ^0.8.0;
contract complexmoderation {
	complex public c;
	uint public x;
	constructor() public {
		x = 1800;
		c = new complex();
	}
	function submutagen() public {
		c.a = c.a - x;
	}
}
