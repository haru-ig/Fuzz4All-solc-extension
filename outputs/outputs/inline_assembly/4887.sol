pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated5 {
	struct mutated5 {
		uint a;
		uint b;
	}
	mutated5 public data;
	constructor() {
		data.a = 3;
		data.b = 10;
	}
	function subtract11() public {
	  data.b -= 1;
	}
	function subtract3() public {
	  data.b -= 3;
	}
}
