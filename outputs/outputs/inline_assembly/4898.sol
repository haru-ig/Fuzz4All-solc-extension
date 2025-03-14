pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated {
	struct mutated {
		uint a;
	}
	mutated public data;
	constructor() {
		data.a = 20;
	}
	function add1() public {
	   data.a += 1;
		data.a *= 2;
	}
}
