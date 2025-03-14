pragma solidity ^0.8.0;
contract Solidity2 {
	struct Record {
		uint bar;
		uint baz;
		constructor() public {}
	}
	uint public x;
	uint public y;
	uint public z;
	constructor() public {
        x = 1;
        y = x + y;
        z = 2*x + 4*y;
	}
	modifier withModifyX() {
		x += 1;
		y = 4294967*x + y;
        z = 8645899413503*x + 2147483136*y + z;
		_;
	}
	function modifyX() public withModifyX { }
	function test() public {
		x += 1;
		y = 4294967*x + y;
        z = 8645899413503*x + 2147483136*y + z;
	}
}
