pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
	struct mutated {
		uint8 a;
	}
	mutated public data;
	constructor() {
		data.a = 16;
	}
	function add1() public {
		data.a += 1;
	}
}
