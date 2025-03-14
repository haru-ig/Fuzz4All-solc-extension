pragma solidity ^0.8.0;
contract mutated {
	struct mutated2 {
		uint a;
	}
	mutated2 public data;
	constructor() {
		data.a = 20;
	}
	function add1() public {
	  data.a += 1;
	}
}
