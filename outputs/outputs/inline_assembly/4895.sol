pragma solidity ^0.8.0;
contract mutated3 {
	struct mutated3 {
		uint a;
	}
	mutated3 public data;
	constructor() {
		data.a = 30;
	}
	function add1(uint b) public {
		data.a += b;
	}
}
