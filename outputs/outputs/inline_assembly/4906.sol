pragma solidity ^0.8.0;

contract mutated2 {
	struct mutated {
		uint a;
	}
	mutated public data;
	constructor() {
		data.a = 20;
	}
	function add1() public {
	   data.a += 1;
	}
}
