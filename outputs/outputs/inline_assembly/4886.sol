pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated11 {
	struct mutated10 {
		uint a;
		uint b;
	}
	mutated10 public data;
	constructor(uint init_a) {
		data.a = 10;
		data.b = 15;
	}
	function add30() public {
		data.b += 1;
	}
	function add322() public {
		data.b += 2;
		data.b += 2;
	}
}
