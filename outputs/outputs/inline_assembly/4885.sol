pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated9 {
	struct mutated9 {
		uint a;
		uint b;
	}
	mutated9 public data;
	constructor() {
		data.a = 9;
		data.b = 0;
	}
	function add1() public {
	  data.b += 1;
	}
	function add22() public {
		data.b = data.a;
	  data.b += 2;
	  data.b += 2;
		data.b = data.a;
	}
}
