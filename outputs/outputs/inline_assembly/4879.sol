pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated9 {
	struct mutated9 {
		uint a;
	}
	mutated9 public data;
	constructor() {
		data.a = 10;
	}
	function add1() public {
	  data.a += 1;
	}
	function add22() public {
	  data.a += 2;
	  data.a += 2;
	}
}
