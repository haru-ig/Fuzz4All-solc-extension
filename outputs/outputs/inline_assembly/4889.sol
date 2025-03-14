pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated10 {
	struct mutated10 {
		uint x;
		uint y;
		uint z;
	}
	constructor() public {
		x = 10;
		y = 20;
		z = 30;
	}
	function add1() public {
		z = x + 1;
	}
}

contract mutated3 {
	struct mutated3 {
		uint x;
		uint y;
	}
	constructor() public {
		x = 10;
		y = 20;
	}
	function add() public {
		y = x + 1;
	}
}
